package §^#>§
{
   import §!!U§.Sprite;
   import §"O§.§"K§;
   import §&#H§.§3#J§;
   import §'"E§.§8d§;
   import §,"N§.§@#B§;
   import §2"Y§.§,§;
   import §6!H§.§8!r§;
   import §69§.§!!u§;
   import §69§.§""H§;
   import §69§.§4!e§;
   import §7!F§.§7§;
   import §7P§.§3C§;
   import §7P§.§7"s§;
   import §7P§.§7B§;
   import §7P§.§9"k§;
   import §7P§.§=1§;
   import §7P§.§=T§;
   import §7P§.§?"N§;
   import §7P§.§@!8§;
   import §7P§.§^!K§;
   import §9#@§.§ "V§;
   import §9#@§.§##D§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import flash.display.Stage;
   
   public class §8"f§ extends §'6§
   {
       
      
      private var §>=§:§"K§;
      
      private var §#"f§:Vector.<String>;
      
      private var §5"'§:Vector.<String>;
      
      protected var §2#R§:Boolean;
      
      protected var § ,§:int;
      
      public function §8"f§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §>O§() : int
      {
         return this.§ ,§;
      }
      
      public function get §-#I§() : Boolean
      {
         return this.§2#R§;
      }
      
      public function set §-#I§(param1:Boolean) : void
      {
         this.§2#R§ = param1;
      }
      
      public function get §=j§() : §"K§
      {
         return this.§>=§;
      }
      
      override public function init(param1:§8!B§) : void
      {
         var _loc4_:§8!r§ = null;
         var _loc5_:§8d§ = null;
         super.init(param1);
         this.§5"'§ = new Vector.<String>();
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:Vector.<§8!r§> = _loc2_.§]"<§.§;#?§.§^"'§;
         this.§#"f§ = new Vector.<String>(0);
         this.§>=§ = new §"K§(_loc2_,§,"X§(§+!b§));
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = §8d§(new _loc4_.actionClass());
            this.§>=§.§&"]§(_loc5_);
            if(!_loc4_.§+'§)
            {
               this.§#"f§.push(_loc4_.§="A§);
            }
         }
         this.§2#R§ = false;
      }
      
      override public function isCollisionExcluded(param1:§7B§, param2:§7B§) : Boolean
      {
         if((param1 is §@!8§ || param2 is §@!8§) && (param1 is §3C§ || param2 is §3C§ || (param1 is §=T§ || param2 is §=T§)))
         {
            return true;
         }
         return super.isCollisionExcluded(param1,param2);
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§>=§.updateWithTime(param1);
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§>=§.handleEngineUpdateStep(param1);
      }
      
      override protected function initializeLevelObjectManagerBlack(param1:§8!B§, param2:String, param3:String = "", param4:String = "") : §^!K§
      {
         return new §7"s§(this,§=!z§(param1),new Sprite(),param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §>f§(this,param1,new Sprite());
      }
      
      override public function shootBird(param1:§`"]§, param2:Number, param3:Number) : §?"N§
      {
         var _loc4_:§?"N§ = super.shootBird(param1,param2,param3);
         var _loc5_:§'"3§ = param1 as §'"3§;
         var _loc6_:§9"k§ = _loc4_ as §9"k§;
         if(_loc5_)
         {
            if(_loc5_.§[g§)
            {
               §7"s§(§%H§).§#W§(_loc5_,_loc4_);
            }
            if(_loc5_.§!#?§)
            {
               §7"s§(§%H§).§@#Y§(_loc5_,_loc4_,_loc5_.§="U§);
            }
            if(_loc5_.§^"x§)
            {
               if(_loc6_)
               {
                  _loc6_.glow(§15§.§!![§);
               }
               else if(_loc4_ is §=1§)
               {
                  §=1§(_loc4_).glow(§15§.§!![§);
               }
            }
            else if(_loc5_.§ !c§)
            {
               _loc6_.glow(§15§.§1!6§);
            }
         }
         return _loc4_;
      }
      
      public function §8%§(param1:String) : Boolean
      {
         if(!this.§5"'§)
         {
            return false;
         }
         return this.§5"'§.indexOf(param1) >= 0;
      }
      
      public function §0"[§(param1:String) : void
      {
         if(!this.§5"'§)
         {
            this.§5"'§ = new Vector.<String>(0);
         }
         this.§5"'§.push(param1);
      }
      
      public function § !S§() : Vector.<String>
      {
         if(this.§5"'§)
         {
            return this.§5"'§.concat();
         }
         return null;
      }
      
      public function §2!o§() : int
      {
         var _loc2_:Vector.<String> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:int = 0;
         if(this.§5"'§)
         {
            _loc2_ = this.§5"'§.concat();
            _loc3_ = _loc2_.length - 1;
            while(_loc3_ >= 0)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§#"f§.length)
               {
                  if((_loc5_ = _loc2_.indexOf(this.§#"f§[_loc4_])) >= 0)
                  {
                     _loc2_.splice(_loc5_,1);
                  }
                  _loc4_++;
               }
               _loc3_--;
            }
            _loc1_ = _loc2_.length;
         }
         return _loc1_;
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§>=§)
         {
            this.§>=§.dispose();
            this.§>=§ = null;
         }
      }
      
      override public function gameOver(param1:int) : void
      {
         this.§ ,§ = param1;
         this.§2#R§ = true;
      }
      
      public function §7#K§() : void
      {
         this.§2#R§ = false;
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc5_:§4!e§;
         if((_loc5_ = §?"1§.getBackground(param1)) is §""H§)
         {
            return new §##D§(§""H§(_loc5_),param2,param3,§0"l§.soundManager,param4,!§3#J§.§3!s§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
   }
}
