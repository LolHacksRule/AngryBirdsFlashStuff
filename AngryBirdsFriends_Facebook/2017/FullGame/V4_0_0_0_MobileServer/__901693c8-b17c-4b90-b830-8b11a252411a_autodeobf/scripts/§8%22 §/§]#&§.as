package §8" §
{
   import § o§.§%"!§;
   import §1#W§.§!#&§;
   import §6V§.§?!=§;
   import §8"X§.§^!E§;
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   import flash.display.MovieClip;
   
   public class §]#&§ implements §2"?§
   {
      
      public static const §9!E§:String = "STARS_COLLECTION";
       
      
      private var §5#2§:int;
      
      private var §'#l§:int;
      
      private var §!H§:int;
      
      private var §5!!§:int;
      
      private var §5"!§:int;
      
      private var §,!I§:Vector.<§<"e§>;
      
      private var §]!<§:Array;
      
      private var §[#T§:§[!K§;
      
      private var §#!g§:MovieClip;
      
      public function §]#&§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §9!E§;
      }
      
      public function §5a§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§[L§();
         if(!param1)
         {
            return;
         }
         this.§5#2§ = param1.et;
         this.§!H§ = param1.ec;
         this.§'#l§ = param1.ct;
         this.§5!!§ = param1.cc;
         this.§5"!§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§,!I§.push(new §<"e§(_loc2_));
            if(_loc2_.c > this.§5"!§)
            {
               this.§5"!§ = _loc2_.c;
            }
         }
         this.§="7§(param1.cp);
         §^!E§.§@#t§();
      }
      
      public function §[L§() : void
      {
         this.§5#2§ = 0;
         this.§'#l§ = 0;
         this.§!H§ = 0;
         this.§5!!§ = 0;
         this.§]!<§ = new Array();
         this.§,!I§ = new Vector.<§<"e§>();
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
      }
      
      public function §;=§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§%"!§.NORMAL,§^#o§.DEFAULT));
         return true;
      }
      
      public function §4$2§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
         return true;
      }
      
      public function §="y§(param1:§#E§) : void
      {
         this.§[#T§ = param1.getItemByName("Button_StarCollector");
         this.§#!g§ = this.§[#T§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §%"Q§() : void
      {
         if(this.§[#T§ != null)
         {
            if(this.§7"3§())
            {
               this.§#!g§.gotoAndPlay(1);
            }
            else
            {
               this.§#!g§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§;=§();
               §?!=§.§3!q§().§?"8§(§?!=§.§;$,§,this.§7"3§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§#!g§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§7"3§())
               {
                  this.§#!g§.gotoAndPlay(1);
                  break;
               }
         }
      }
      
      public function §?##§(param1:Number, param2:Number) : void
      {
         if(this.§[#T§ != null)
         {
            this.§[#T§.x = param1;
            this.§[#T§.y = param2;
            if(this.§[#T§.visible)
            {
               if(!§ "a§.§ "D§.§ #b§())
               {
                  this.§[#T§.setVisibility(false);
               }
            }
            else if(§ "a§.§ "D§.§ #b§())
            {
               this.§[#T§.setVisibility(true);
            }
         }
      }
      
      public function get §<#2§() : int
      {
         return this.§5#2§;
      }
      
      public function get §-#s§() : int
      {
         return this.§'#l§;
      }
      
      public function get §!#H§() : int
      {
         return this.§!H§;
      }
      
      public function get §9"D§() : int
      {
         return this.§5"!§;
      }
      
      public function §"!Z§(param1:int) : void
      {
         var _loc2_:§<"e§ = this.§;#Q§();
         if(this.§!H§ < _loc2_.starsNeeded && this.§!H§ + param1 >= _loc2_.starsNeeded)
         {
            this.§##,§(_loc2_.ID);
         }
         this.§!H§ += param1;
      }
      
      public function get §=#R§() : int
      {
         return this.§5!!§;
      }
      
      public function §6!L§(param1:int) : §<"e§
      {
         if(this.§,!I§ && param1 < this.§,!I§.length)
         {
            return this.§,!I§[param1];
         }
         return null;
      }
      
      public function §0#k§(param1:int) : §<"e§
      {
         var _loc2_:int = 0;
         if(this.§,!I§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§,!I§.length)
            {
               if(this.§,!I§[_loc2_].ID == param1)
               {
                  return this.§,!I§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §##,§(param1:int) : void
      {
         if(this.§]!<§)
         {
            this.§]!<§.push("" + param1);
         }
         else
         {
            this.§]!<§ = ["" + param1];
         }
      }
      
      public function §="7§(param1:Array) : void
      {
         this.§]!<§ = param1;
      }
      
      public function §7"3§() : Boolean
      {
         return this.§]!<§ && this.§]!<§.length > 0;
      }
      
      public function §5$,§(param1:int) : Boolean
      {
         if(this.§]!<§ && this.§]!<§.length > 0)
         {
            return this.§]!<§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function §;#Q§() : §<"e§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!I§.length)
         {
            if(this.§!H§ < this.§,!I§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§!H§ == this.§,!I§[_loc2_].starsNeeded)
            {
               if(this.§5$,§(this.§,!I§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§5$,§(this.§,!I§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§,!I§[_loc1_];
      }
   }
}
