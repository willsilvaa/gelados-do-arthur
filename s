<!DOCTYPE html>

<html lang="pt-BR">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Gelados do Arthur - Explosão de Sabor</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect" />
    <link
        href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&amp;family=Nunito:ital,wght@0,200..1000;1,200..1000&amp;family=Spline+Sans:wght@300;400;500;600;700&amp;display=swap"
        rel="stylesheet" />
    <!-- Material Symbols -->
    <link
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
        rel="stylesheet" />
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
    <script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    colors: {
                        "primary": "#FF2E00", // Strawberry Burst
                        "primary-dark": "#cc2500",
                        "secondary": "#6A0DAD", // Grape Juice
                        "background-light": "#FFECE6", // Creamy Strawberry Milk
                        "background-dark": "#23130f",
                        "accent": "#FFD700", // Sunny Mango
                        "text-main": "#420D09", // Dark Chocolate
                    },
                    fontFamily: {
                        "display": ["Fredoka", "cursive"],
                        "body": ["Nunito", "sans-serif"],
                        "sans": ["Spline Sans", "sans-serif"] // Fallback
                    },
                    borderRadius: {
                        "DEFAULT": "0.5rem",
                        "lg": "1rem",
                        "xl": "1.5rem",
                        "blob": "60% 40% 30% 70% / 60% 30% 70% 40%",
                        "full": "9999px"
                    },
                    boxShadow: {
                        "pop": "6px 6px 0px #420D09",
                        "pop-hover": "2px 2px 0px #420D09",
                        "pop-sm": "3px 3px 0px #420D09",
                    },
                    animation: {
                        "float": "float 6s ease-in-out infinite",
                        "float-delayed": "float 7s ease-in-out 2s infinite",
                        "pulse-strong": "pulse-strong 3s infinite",
                        "spin-slow": "spin 12s linear infinite",
                    },
                    keyframes: {
                        float: {
                            "0%, 100%": { transform: "translateY(0)" },
                            "50%": { transform: "translateY(-20px)" },
                        },
                        "pulse-strong": {
                            "0%, 100%": { transform: "scale(1)" },
                            "50%": { transform: "scale(1.05)" },
                        }
                    }
                },
            },
        }
    </script>
    <style>
        /* Custom Styles for Liquid/Blob effects that are hard to do with just utility classes */
        .text-stroke {
            -webkit-text-stroke: 2px #420D09;
            text-shadow: 4px 4px 0px rgba(66, 13, 9, 0.2);
        }

        .blob-shape {
            border-radius: 60% 40% 30% 70% / 60% 30% 70% 40%;
        }

        .bg-pattern {
            background-image: radial-gradient(#FF2E00 1px, transparent 1px);
            background-size: 20px 20px;
            opacity: 0.1;
        }

        /* Hide scrollbar for clean view */
        ::-webkit-scrollbar {
            width: 0px;
            background: transparent;
        }
    </style>
</head>

<body
    class="bg-background-light dark:bg-background-dark overflow-x-hidden font-body text-text-main selection:bg-accent selection:text-text-main relative">
    <!-- Background Texture -->
    <div class="fixed inset-0 pointer-events-none bg-pattern z-0"></div>
    <!-- Floating Fruit Decorations (Parallax-ish via Animation) -->
    <div class="fixed top-20 left-10 w-24 h-24 opacity-20 animate-float pointer-events-none z-0">
        <span class="material-symbols-outlined text-8xl text-primary">nutrition</span>
    </div>
    <div class="fixed bottom-40 right-20 w-32 h-32 opacity-20 animate-float-delayed pointer-events-none z-0 rotate-45">
        <span class="material-symbols-outlined text-9xl text-secondary">eco</span>
    </div>
    <div
        class="fixed top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[800px] h-[800px] bg-primary/5 rounded-full blur-3xl pointer-events-none z-0">
    </div>
    <!-- Navigation -->
    <nav class="relative z-50 w-full px-6 py-6 md:px-12">
        <div class="max-w-7xl mx-auto flex items-center justify-between">
            <!-- Logo -->
            <div class="flex items-center gap-2 group cursor-pointer">
                <div
                    class="relative size-12 bg-white border-2 border-text-main rounded-full flex items-center justify-center shadow-pop-sm group-hover:rotate-12 transition-transform">
                    <span class="material-symbols-outlined text-primary text-3xl">icecream</span>
                </div>
                <h2 class="font-display text-2xl md:text-3xl font-bold text-text-main tracking-tight leading-none">
                    Gelados<br /><span class="text-primary">do Arthur</span>
                </h2>
            </div>
            <!-- Desktop Links -->
            <div
                class="hidden md:flex items-center gap-8 bg-white/60 backdrop-blur-sm px-8 py-3 rounded-full border-2 border-text-main/10 shadow-sm">
                <a class="font-display font-bold text-text-main hover:text-primary transition-colors text-lg"
                    href="#">Sabores</a>
                <a class="font-display font-bold text-text-main hover:text-primary transition-colors text-lg"
                    href="#">Sobre</a>
                <a class="font-display font-bold text-text-main hover:text-primary transition-colors text-lg"
                    href="#">Contato</a>
            </div>
            <!-- Actions -->
            <div class="flex gap-4">
                <button
                    class="hidden md:flex items-center gap-2 bg-white text-text-main font-display font-bold px-5 py-2.5 rounded-xl border-2 border-text-main shadow-pop-sm hover:translate-y-[2px] hover:shadow-none transition-all active:scale-95">
                    <span class="material-symbols-outlined">shopping_bag</span>
                    <span>Sacola (0)</span>
                </button>
                <button
                    class="md:hidden p-2 bg-white border-2 border-text-main rounded-lg shadow-pop-sm active:translate-y-[2px] active:shadow-none">
                    <span class="material-symbols-outlined">menu</span>
                </button>
            </div>
        </div>
    </nav>
    <!-- Hero Content -->
    <main class="relative z-10 w-full min-h-[calc(100vh-100px)] flex flex-col justify-center">
        <div
            class="max-w-7xl mx-auto w-full px-6 md:px-12 grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center py-10">
            <!-- Left Column: Copy & CTA -->
            <div class="lg:col-span-5 flex flex-col gap-8 text-center lg:text-left order-2 lg:order-1 relative">
                <!-- Decorative Splashes behind text -->
                <div
                    class="absolute -top-20 -left-20 w-40 h-40 bg-accent rounded-full opacity-30 blur-2xl animate-pulse-strong pointer-events-none">
                </div>
                <div class="flex flex-col gap-2 relative">
                    <span
                        class="font-display text-secondary font-bold text-xl tracking-wider uppercase rotate-[-2deg] inline-block w-fit mx-auto lg:mx-0 bg-white/50 px-3 py-1 rounded-lg border border-secondary/20 transform hover:scale-110 transition-transform cursor-default">
                        🍦 100% Fruta Real
                    </span>
                    <h1
                        class="font-display font-black text-6xl md:text-7xl xl:text-8xl leading-[0.9] text-text-main drop-shadow-sm">
                        EXPLOSÃO<br />
                        DE <span class="relative inline-block text-primary">
                            SABOR
                            <!-- Underline SVG -->
                            <svg class="absolute -bottom-4 left-0 w-full h-6 text-accent z-[-1]"
                                preserveaspectratio="none" viewbox="0 0 100 20">
                                <path d="M0 10 Q 50 20 100 10" fill="none" stroke="currentColor" stroke-linecap="round"
                                    stroke-width="8"></path>
                            </svg>
                        </span>
                    </h1>
                </div>
                <p class="text-lg md:text-xl font-bold text-text-main/80 max-w-lg mx-auto lg:mx-0 leading-relaxed">
                    Gelados artesanais feitos com fruta de verdade. Sem conservantes, sem culpa, puro frescor derretendo
                    na boca.
                </p>
                <div class="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start pt-4">
                    <button
                        class="group relative bg-accent text-text-main font-display text-xl font-black uppercase tracking-wide px-8 py-4 rounded-xl border-2 border-text-main shadow-pop hover:shadow-pop-hover hover:translate-x-[4px] hover:translate-y-[4px] transition-all duration-200 animate-pulse-strong hover:animate-none overflow-hidden">
                        <span class="relative z-10 flex items-center gap-2">
                            Quero Provar
                            <span
                                class="material-symbols-outlined group-hover:rotate-45 transition-transform">arrow_forward</span>
                        </span>
                        <!-- Shine effect -->
                        <div
                            class="absolute inset-0 bg-white/30 translate-y-full group-hover:translate-y-0 transition-transform duration-300 transform skew-y-12 origin-bottom-left">
                        </div>
                    </button>
                    <button
                        class="flex items-center gap-2 px-6 py-4 font-display font-bold text-text-main hover:text-primary transition-colors group">
                        <div
                            class="w-10 h-10 bg-white rounded-full flex items-center justify-center border-2 border-text-main shadow-sm group-hover:scale-110 transition-transform">
                            <span class="material-symbols-outlined text-xl">play_arrow</span>
                        </div>
                        <span>Como é feito</span>
                    </button>
                </div>
                <!-- Trusted Badges -->
                <div class="flex items-center justify-center lg:justify-start gap-6 pt-8 opacity-80">
                    <div class="flex -space-x-3">
                        <img alt="User 1" class="w-10 h-10 rounded-full border-2 border-white object-cover"
                            data-alt="User Avatar 1"
                            src="https://lh3.googleusercontent.com/aida-public/AB6AXuBv2D2MkEmogTtAKJ_Mh7g6t3TMqZo2Sc01i1ZYgYN60W6HH-jr3Jc54XC8qTZsyLYZPRLMTEg6TKEueHIisjZjl9VhTXohOaPAV8zsRMqCOFfL4li7tpqEkfzixlDx9YbfwJXdeWzxyq1JN-jTVATtiRERHGC6kaZgrME81khKyBVBtmPv_nkegUxcnEPVKMRrq7qWAYcfNslmM4-BsGbdr5Q0QK4yQWVl246qzv-C7RftA1JJd8gbsP1_9MciryG9adO4bxcVk4M" />
                        <img alt="User 2" class="w-10 h-10 rounded-full border-2 border-white object-cover"
                            data-alt="User Avatar 2"
                            src="https://lh3.googleusercontent.com/aida-public/AB6AXuABiZTjHJmvcI2a1v5ht31w29P18aloF8WHmZ_bWzSiw4IvRzZuL1JGgLefCc11-sIhCU_RGS7dVObJDtzLn7zdju6E1Nokqxfy1y5NzdfZ7rw_B-sqywO2EfHqO83fyUOSI86W3eDX0YhdhPvxFBYDkoOy6xP_xh_N_QeRRxp69hGZbCg8mUyTwVG6x2FnqhPyAP6MVN9PlNGgyNgVuV0hu-J-kQMrB3z1cL9nAkWDDh3vdS0OQB0ovZyRROVp8xcgsqe2ebY4iIQ" />
                        <img alt="User 3" class="w-10 h-10 rounded-full border-2 border-white object-cover"
                            data-alt="User Avatar 3"
                            src="https://lh3.googleusercontent.com/aida-public/AB6AXuAkh0qQZJYdmpVSVoSmt3kmDsXaefSlH_xURIdxF2PLVD7qIawAIpVGO8fThZg0dQV5JasoUcVKBAVpyhxShaQeqUZLlZwa_FJ-XOp9XZlUNohGz02ue7jsdBt4t3yK82VisOzaSUaaYnTtuqMw60iWQvfBxjZHa_1Sn3PGk651Z_6CnWkqDvFJC_ZQZQRy0X82LVfd352OG3rooi2jiO9WAH4LPZiMLKCOSEpOpecberSrbF5ZCPbWLLGzsqGMofnEiV3OC8PulFU" />
                        <div
                            class="w-10 h-10 rounded-full border-2 border-white bg-secondary text-white flex items-center justify-center text-xs font-bold font-display">
                            +2k</div>
                    </div>
                    <div class="flex flex-col text-xs font-bold leading-tight">
                        <div class="flex text-primary">
                            <span class="material-symbols-outlined text-[16px] fill-current">star</span>
                            <span class="material-symbols-outlined text-[16px] fill-current">star</span>
                            <span class="material-symbols-outlined text-[16px] fill-current">star</span>
                            <span class="material-symbols-outlined text-[16px] fill-current">star</span>
                            <span class="material-symbols-outlined text-[16px] fill-current">star</span>
                        </div>
                        <span>Viciados em Sabor</span>
                    </div>
                </div>
            </div>
            <!-- Right Column: Hero Image & Visuals -->
            <div
                class="lg:col-span-7 relative h-[500px] lg:h-[700px] flex items-center justify-center order-1 lg:order-2 perspective-1000">
                <!-- Background Blob Decoration -->
                <div
                    class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] h-[90%] bg-primary rounded-blob rotate-12 opacity-10 animate-spin-slow">
                </div>
                <div
                    class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[70%] h-[70%] bg-accent rounded-blob -rotate-6 opacity-20">
                </div>
                <!-- Main Hero Image (IMAGE_2) -->
                <div class="relative z-30 w-full max-w-lg animate-float">
                    <img alt="Gelados do Arthur - Já estamos funcionando"
                        class="w-full h-auto drop-shadow-[0_20px_50px_rgba(255,46,0,0.4)] hover:scale-105 transition-transform duration-500 cursor-pointer"
                        src="{{DATA:IMAGE:IMAGE_2}}" />
                    <!-- Interactive Tag Integrated -->
                    <div
                        class="absolute -top-4 -right-4 bg-white text-text-main px-6 py-3 rounded-xl font-display font-black shadow-pop text-lg rotate-12 animate-pulse-strong">
                        <span class="text-primary">DELIVERY</span> ON! 🏍️
                    </div>
                </div>
                <!-- Floating Decorative Elements -->
                <div class="absolute top-10 right-0 w-24 h-24 opacity-40 animate-float-delayed pointer-events-none">
                    <span class="material-symbols-outlined text-7xl text-primary">icecream</span>
                </div>
                <div class="absolute bottom-10 left-0 w-24 h-24 opacity-40 animate-float pointer-events-none">
                    <span class="material-symbols-outlined text-7xl text-secondary">fastfood</span>
                </div>
            </div>
        </div>
    </main>
    <!-- Scrolling Marquee Footer -->
    <div
        class="absolute bottom-0 left-0 w-full bg-secondary overflow-hidden py-3 border-t-4 border-text-main rotate-1 shadow-[0_-5px_10px_rgba(0,0,0,0.1)] z-20">
        <div class="whitespace-nowrap flex animate-[scroll_20s_linear_infinite] w-[200%]">
            <div
                class="flex gap-8 items-center text-white font-display font-black text-xl md:text-2xl uppercase tracking-widest px-4">
                <span>⚡ Frescor Imediato</span>
                <span class="text-accent text-3xl">•</span>
                <span>🍓 Fruta de Verdade</span>
                <span class="text-accent text-3xl">•</span>
                <span>❄️ Zero Conservantes</span>
                <span class="text-accent text-3xl">•</span>
                <span>😋 Vício Saudável</span>
                <span class="text-accent text-3xl">•</span>
                <span>⚡ Frescor Imediato</span>
                <span class="text-accent text-3xl">•</span>
                <span>🍓 Fruta de Verdade</span>
                <span class="text-accent text-3xl">•</span>
                <span>❄️ Zero Conservantes</span>
                <span class="text-accent text-3xl">•</span>
                <span>😋 Vício Saudável</span>
                <span class="text-accent text-3xl">•</span>
            </div>
            <div
                class="flex gap-8 items-center text-white font-display font-black text-xl md:text-2xl uppercase tracking-widest px-4">
                <span>⚡ Frescor Imediato</span>
                <span class="text-accent text-3xl">•</span>
                <span>🍓 Fruta de Verdade</span>
                <span class="text-accent text-3xl">•</span>
                <span>❄️ Zero Conservantes</span>
                <span class="text-accent text-3xl">•</span>
                <span>😋 Vício Saudável</span>
                <span class="text-accent text-3xl">•</span>
                <span>⚡ Frescor Imediato</span>
                <span class="text-accent text-3xl">•</span>
                <span>🍓 Fruta de Verdade</span>
                <span class="text-accent text-3xl">•</span>
                <span>❄️ Zero Conservantes</span>
                <span class="text-accent text-3xl">•</span>
                <span>😋 Vício Saudável</span>
                <span class="text-accent text-3xl">•</span>
            </div>
        </div>
    </div>
    <!-- Extra Styles for marquee animation which Tailwind doesn't have by default -->
    <style>
        @keyframes scroll {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-50%);
            }
        }
    </style>
</body>

</html>