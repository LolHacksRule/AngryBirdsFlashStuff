package §+"s§
{
   import §%!-§.§5!z§;
   import §&!_§.§!!K§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §3+§.§;!H§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   import flash.display.MovieClip;
   
   public class §>#O§ implements §8L§
   {
      
      public static const §0#V§:String = "STARS_COLLECTION";
       
      
      private var §8"=§:int;
      
      private var §]"B§:int;
      
      private var §[!=§:int;
      
      private var §`!&§:int;
      
      private var §><§:int;
      
      private var §0$7§:Vector.<§7"D§>;
      
      private var §2#u§:Array;
      
      private var §`!H§:§8#=§;
      
      private var §?B§:MovieClip;
      
      public function §>#O§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§7b§();
         if(!param1)
         {
            return;
         }
         this.§8"=§ = param1.et;
         this.§[!=§ = param1.ec;
         this.§]"B§ = param1.ct;
         this.§`!&§ = param1.cc;
         this.§><§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§0$7§.push(new §7"D§(_loc2_));
            if(_loc2_.c > this.§><§)
            {
               this.§><§ = _loc2_.c;
            }
         }
         this.§;!S§(param1.cp);
         §;!H§.§]`§();
      }
      
      public function §7b§() : void
      {
         this.§8"=§ = 0;
         this.§]"B§ = 0;
         this.§[!=§ = 0;
         this.§`!&§ = 0;
         this.§2#u§ = new Array();
         this.§0$7§ = new Vector.<§7"D§>();
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
      }
      
      public function §2!K§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_StarCollector");
         this.§?B§ = this.§`!H§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §&#3§() : void
      {
         if(this.§`!H§ != null)
         {
            if(this.§9"@§())
            {
               this.§?B§.gotoAndPlay(1);
            }
            else
            {
               this.§?B§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§2!K§();
               §!!K§.§%#S§().§`H§(§!!K§.§4"[§,this.§9"@§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§?B§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§9"@§())
               {
                  this.§?B§.gotoAndPlay(1);
                  break;
               }
         }
      }
      
      public function §1!1§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§`!H§ != null)
         {
            this.§`!H§.x = param1;
            this.§`!H§.y = param2;
            if(this.§`!H§.visible)
            {
               if(!§7"L§.§`"H§.§58§())
               {
                  this.§`!H§.setVisibility(false);
               }
            }
            else if(§7"L§.§`"H§.§58§())
            {
               this.§`!H§.setVisibility(true);
            }
         }
      }
      
      public function get §]#M§() : int
      {
         return this.§8"=§;
      }
      
      public function get §<"K§() : int
      {
         return this.§]"B§;
      }
      
      public function get §^#B§() : int
      {
         return this.§[!=§;
      }
      
      public function get §1$=§() : int
      {
         return this.§><§;
      }
      
      public function §6"M§(param1:int) : void
      {
         var _loc2_:§7"D§ = this.§ $7§();
         if(this.§[!=§ < _loc2_.starsNeeded && this.§[!=§ + param1 >= _loc2_.starsNeeded)
         {
            this.§9#M§(_loc2_.ID);
         }
         this.§[!=§ += param1;
      }
      
      public function get §,"<§() : int
      {
         return this.§`!&§;
      }
      
      public function §%H§(param1:int) : §7"D§
      {
         if(this.§0$7§ && param1 < this.§0$7§.length)
         {
            return this.§0$7§[param1];
         }
         return null;
      }
      
      public function § " §(param1:int) : §7"D§
      {
         var _loc2_:int = 0;
         if(this.§0$7§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§0$7§.length)
            {
               if(this.§0$7§[_loc2_].ID == param1)
               {
                  return this.§0$7§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §9#M§(param1:int) : void
      {
         if(this.§2#u§)
         {
            this.§2#u§.push("" + param1);
         }
         else
         {
            this.§2#u§ = ["" + param1];
         }
      }
      
      public function §;!S§(param1:Array) : void
      {
         this.§2#u§ = param1;
      }
      
      public function §9"@§() : Boolean
      {
         return this.§2#u§ && this.§2#u§.length > 0;
      }
      
      public function §%"I§(param1:int) : Boolean
      {
         if(this.§2#u§ && this.§2#u§.length > 0)
         {
            return this.§2#u§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function § $7§() : §7"D§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0$7§.length)
         {
            if(this.§[!=§ < this.§0$7§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§[!=§ == this.§0$7§[_loc2_].starsNeeded)
            {
               if(this.§%"I§(this.§0$7§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§%"I§(this.§0$7§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§0$7§[_loc1_];
      }
   }
}
