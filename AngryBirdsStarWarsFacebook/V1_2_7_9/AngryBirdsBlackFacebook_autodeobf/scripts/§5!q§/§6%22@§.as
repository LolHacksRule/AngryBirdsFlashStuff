package §5!q§
{
   import §+"f§.§+!0§;
   import §+"f§.§[_§;
   import §+"f§.§`!1§;
   import §,#+§.§7!m§;
   import §,#+§.§;"y§;
   import §,#+§.§<U§;
   import §,#+§.§="l§;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §6"R§.§ !M§;
   import §6"R§.§ !v§;
   import §6"R§.§!z§;
   import §6"R§.§%!0§;
   import §6"R§.§,"z§;
   import §6"R§.§6M§;
   import §6"R§.§7#"§;
   import §6"R§.§<"D§;
   import §6"R§.§]"-§;
   import §7!S§.§,!O§;
   import §7!S§.§>"-§;
   import §9!!§.§=!S§;
   import §="8§.§'!U§;
   import §>P§.§!!O§;
   import §@b§.§1"0§;
   import §^"H§.§'§;
   import §`"8§.§-!w§;
   import flash.display.Stage;
   
   public class §6"@§ extends §%b§
   {
       
      
      private var §=">§:§'!U§;
      
      private var §3V§:Vector.<String>;
      
      private var §=$§:Vector.<String>;
      
      protected var §,"3§:Boolean;
      
      protected var §3!O§:int;
      
      public function §6"@§(param1:Stage, param2:§!!O§, param3:§+!0§, param4:§7!m§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §"!5§() : int
      {
         return this.§3!O§;
      }
      
      public function get §?"v§() : Boolean
      {
         return this.§,"3§;
      }
      
      public function set §?"v§(param1:Boolean) : void
      {
         this.§,"3§ = param1;
      }
      
      public function get §2#7§() : §'!U§
      {
         return this.§=">§;
      }
      
      override public function init(param1:§<U§) : void
      {
         var _loc4_:§1"0§ = null;
         var _loc5_:§'#1§ = null;
         super.init(param1);
         this.§=$§ = new Vector.<String>();
         var _loc2_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc3_:Vector.<§1"0§> = _loc2_.§=>§.§[!D§.§8"A§;
         this.§3V§ = new Vector.<String>(0);
         this.§=">§ = new §'!U§(_loc2_,§;"y§(§ !p§));
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = §'#1§(new _loc4_.actionClass());
            this.§=">§.§0!R§(_loc5_);
            if(!_loc4_.§7!M§)
            {
               this.§3V§.push(_loc4_.§0B§);
            }
         }
         this.§,"3§ = false;
      }
      
      override public function isCollisionExcluded(param1:§!z§, param2:§!z§) : Boolean
      {
         if((param1 is §<"D§ || param2 is §<"D§) && (param1 is §]"-§ || param2 is §]"-§ || (param1 is §6M§ || param2 is §6M§)))
         {
            return true;
         }
         return super.isCollisionExcluded(param1,param2);
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§=">§.updateWithTime(param1);
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§=">§.handleEngineUpdateStep(param1);
      }
      
      override protected function initializeLevelObjectManagerBlack(param1:§<U§, param2:String, param3:String = "", param4:String = "") : §,"z§
      {
         return new § !M§(this,§="l§(param1),new Sprite(),param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§<U§) : §-R§
      {
         return new §&#3§(this,param1,new Sprite());
      }
      
      override public function shootBird(param1:§+e§, param2:Number, param3:Number) : §%!0§
      {
         var _loc4_:§%!0§ = super.shootBird(param1,param2,param3);
         var _loc5_:§[E§ = param1 as §[E§;
         var _loc6_:§ !v§ = _loc4_ as § !v§;
         if(_loc5_)
         {
            if(_loc5_.§ &§)
            {
               § !M§(§^"8§).§7#%§(_loc5_,_loc4_);
            }
            if(_loc5_.§!"C§)
            {
               § !M§(§^"8§).§^H§(_loc5_,_loc4_,_loc5_.§+"K§);
            }
            if(_loc5_.§92§)
            {
               if(_loc6_)
               {
                  _loc6_.glow(§>o§.§8!T§);
               }
               else if(_loc4_ is §7#"§)
               {
                  §7#"§(_loc4_).glow(§>o§.§8!T§);
               }
            }
            else if(_loc5_.§;"O§)
            {
               _loc6_.glow(§>o§.§'"L§);
            }
         }
         return _loc4_;
      }
      
      public function §`#§(param1:String) : Boolean
      {
         if(!this.§=$§)
         {
            return false;
         }
         return this.§=$§.indexOf(param1) >= 0;
      }
      
      public function §8"E§(param1:String) : void
      {
         if(!this.§=$§)
         {
            this.§=$§ = new Vector.<String>(0);
         }
         this.§=$§.push(param1);
      }
      
      public function §#s§() : Vector.<String>
      {
         if(this.§=$§)
         {
            return this.§=$§.concat();
         }
         return null;
      }
      
      public function §]"4§() : int
      {
         var _loc2_:Vector.<String> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:int = 0;
         if(this.§=$§)
         {
            _loc2_ = this.§=$§.concat();
            _loc3_ = _loc2_.length - 1;
            while(_loc3_ >= 0)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3V§.length)
               {
                  if((_loc5_ = _loc2_.indexOf(this.§3V§[_loc4_])) >= 0)
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
         if(this.§=">§)
         {
            this.§=">§.dispose();
            this.§=">§ = null;
         }
      }
      
      override public function gameOver(param1:int) : void
      {
         this.§3!O§ = param1;
         this.§,"3§ = true;
      }
      
      public function §^n§() : void
      {
         this.§,"3§ = false;
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§&"0§, param4:Number) : §>"-§
      {
         var _loc5_:§[_§;
         if((_loc5_ = § G§.getBackground(param1)) is §`!1§)
         {
            return new §,!O§(§`!1§(_loc5_),param2,param3,§4#7§.soundManager,param4,!§=!S§.§&!n§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
   }
}
