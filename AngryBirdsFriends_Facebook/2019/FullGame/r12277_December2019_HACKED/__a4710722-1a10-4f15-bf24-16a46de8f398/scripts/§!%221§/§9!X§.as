package §!"1§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §2E§.§]!P§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import §[#v§.§4e§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   import flash.display.MovieClip;
   
   public class §9!X§ implements §-"-§
   {
      
      public static const §?"n§:String = "STARS_COLLECTION";
       
      
      private var §'#[§:int;
      
      private var §!"Y§:int;
      
      private var §^#6§:int;
      
      private var §[6§:int;
      
      private var §=m§:int;
      
      private var §7!%§:Vector.<§4#q§>;
      
      private var §%!R§:Array;
      
      private var § g§:§6!1§;
      
      private var §[+§:MovieClip;
      
      public function §9!X§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§&#D§();
         if(!param1)
         {
            return;
         }
         this.§'#[§ = param1.et;
         this.§^#6§ = param1.ec;
         this.§!"Y§ = param1.ct;
         this.§[6§ = param1.cc;
         this.§=m§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§7!%§.push(new §4#q§(_loc2_));
            if(_loc2_.c > this.§=m§)
            {
               this.§=m§ = _loc2_.c;
            }
         }
         this.§9"g§(param1.cp);
         §4e§.§^H§();
      }
      
      public function §&#D§() : void
      {
         this.§'#[§ = 0;
         this.§!"Y§ = 0;
         this.§^#6§ = 0;
         this.§[6§ = 0;
         this.§%!R§ = new Array();
         this.§7!%§ = new Vector.<§4#q§>();
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
      }
      
      public function §^x§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§-!S§.NORMAL,§## §.DEFAULT));
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§-!S§.INFO,§## §.DEFAULT));
         return true;
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_StarCollector");
         this.§[+§ = this.§ g§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §]#g§() : void
      {
         if(this.§ g§ != null)
         {
            if(this.§5#_§())
            {
               this.§[+§.gotoAndPlay(1);
            }
            else
            {
               this.§[+§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§^x§();
               §]!P§.§1!7§().§8"p§(§]!P§.§]!t§,this.§5#_§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§[+§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§5#_§())
               {
                  this.§[+§.gotoAndPlay(1);
                  break;
               }
         }
      }
      
      public function §@"H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ g§ != null)
         {
            this.§ g§.x = param1;
            this.§ g§.y = param2;
            if(this.§ g§.visible)
            {
               if(!§=!a§.§3"1§.§#"P§())
               {
                  this.§ g§.setVisibility(false);
               }
            }
            else if(§=!a§.§3"1§.§#"P§())
            {
               this.§ g§.setVisibility(true);
            }
         }
      }
      
      public function get §%#W§() : int
      {
         return this.§'#[§;
      }
      
      public function get §!$§() : int
      {
         return this.§!"Y§;
      }
      
      public function get §]!k§() : int
      {
         return this.§^#6§;
      }
      
      public function get §9#R§() : int
      {
         return this.§=m§;
      }
      
      public function §[!z§(param1:int) : void
      {
         var _loc2_:§4#q§ = this.§,!@§();
         if(this.§^#6§ < _loc2_.starsNeeded && this.§^#6§ + param1 >= _loc2_.starsNeeded)
         {
            this.§2#^§(_loc2_.ID);
         }
         this.§^#6§ += param1;
      }
      
      public function get §"#I§() : int
      {
         return this.§[6§;
      }
      
      public function §5!g§(param1:int) : §4#q§
      {
         if(this.§7!%§ && param1 < this.§7!%§.length)
         {
            return this.§7!%§[param1];
         }
         return null;
      }
      
      public function §&#m§(param1:int) : §4#q§
      {
         var _loc2_:int = 0;
         if(this.§7!%§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§7!%§.length)
            {
               if(this.§7!%§[_loc2_].ID == param1)
               {
                  return this.§7!%§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §2#^§(param1:int) : void
      {
         if(this.§%!R§)
         {
            this.§%!R§.push("" + param1);
         }
         else
         {
            this.§%!R§ = ["" + param1];
         }
      }
      
      public function §9"g§(param1:Array) : void
      {
         this.§%!R§ = param1;
      }
      
      public function §5#_§() : Boolean
      {
         return this.§%!R§ && this.§%!R§.length > 0;
      }
      
      public function §]$?§(param1:int) : Boolean
      {
         if(this.§%!R§ && this.§%!R§.length > 0)
         {
            return this.§%!R§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function §,!@§() : §4#q§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!%§.length)
         {
            if(this.§^#6§ < this.§7!%§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§^#6§ == this.§7!%§[_loc2_].starsNeeded)
            {
               if(this.§]$?§(this.§7!%§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§]$?§(this.§7!%§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§7!%§[_loc1_];
      }
   }
}
