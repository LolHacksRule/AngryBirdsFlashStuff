package §"§#0
{
   import § "-§.§6!R§;
   import §!!k§.§0!B§;
   import §!r§.§ ""§;
   import §!r§.§%2§;
   import §!r§.§&$§;
   import §!r§.§+"X§;
   import §!r§.§2!a§;
   import §!r§.§;!T§;
   import §!r§.§<#&§;
   import §!r§.§?!x§;
   import §!r§.§`"w§;
   import §""c§.§5"p§;
   import §""c§.§>"w§;
   import §#g§.§2"m§;
   import §%#+§.§?"U§;
   import §&!c§.§=!Q§;
   import §'"A§.§!§;
   import §9"U§.§7"1§;
   import §`!v§.§5!R§;
   import §`!v§.§8X§;
   import §`!v§.§`[§;
   import flash.display.Stage;
   import §null §.§ #$§;
   import §null §.§'!k§;
   import §null §.§5#§;
   import §null §.§>#-§;
   import §use§.Sprite;
   
   public class §0F§ extends §`#&§
   {
       
      
      private var §;H§:§=!Q§;
      
      private var §!"m§:Vector.<String>;
      
      private var §0!4§:Vector.<String>;
      
      protected var §6X§:Boolean;
      
      protected var §-&§:int;
      
      public function §0F§(param1:Stage, param2:§2"m§, param3:§5!R§, param4:§5#§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §7P§() : int
      {
         return this.§-&§;
      }
      
      public function get §]"§() : Boolean
      {
         return this.§6X§;
      }
      
      public function set §]"§(param1:Boolean) : void
      {
         this.§6X§ = param1;
      }
      
      public function get §9N§() : §=!Q§
      {
         return this.§;H§;
      }
      
      override public function init(param1:§>#-§) : void
      {
         var _loc4_:§!#2§ = null;
         var _loc5_:§?"U§ = null;
         super.init(param1);
         this.§0!4§ = new Vector.<String>();
         var _loc2_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc3_:Vector.<§!#2§> = _loc2_.§@!K§.§<!h§.§2d§;
         this.§!"m§ = new Vector.<String>(0);
         this.§;H§ = new §=!Q§(_loc2_,§ #$§(§'""§));
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = §?"U§(new _loc4_.actionClass());
            this.§;H§.§-"_§(_loc5_);
            if(!_loc4_.§4"8§)
            {
               this.§!"m§.push(_loc4_.§1!b§);
            }
         }
         this.§6X§ = false;
      }
      
      override public function isCollisionExcluded(param1:§?!x§, param2:§?!x§) : Boolean
      {
         if((param1 is §`"w§ || param2 is §`"w§) && (param1 is §<#&§ || param2 is §<#&§ || (param1 is § ""§ || param2 is § ""§)))
         {
            return true;
         }
         return super.isCollisionExcluded(param1,param2);
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§;H§.updateWithTime(param1);
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§;H§.handleEngineUpdateStep(param1);
      }
      
      override protected function initializeLevelObjectManagerBlack(param1:§>#-§, param2:String, param3:String = "", param4:String = "") : §%2§
      {
         return new §+"X§(this,§'!k§(param1),new Sprite(),param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§>#-§) : §%#7§
      {
         return new §<U§(this,param1,new Sprite());
      }
      
      override public function shootBird(param1:§1!T§, param2:Number, param3:Number) : §;!T§
      {
         var _loc4_:§;!T§ = super.shootBird(param1,param2,param3);
         var _loc5_:§%!_§ = param1 as §%!_§;
         var _loc6_:§2!a§ = _loc4_ as §2!a§;
         if(_loc5_)
         {
            if(_loc5_.§8'§)
            {
               §+"X§(§ +§).§="p§(_loc5_,_loc4_);
            }
            if(_loc5_.§]P§)
            {
               §+"X§(§ +§).§2§(_loc5_,_loc4_,_loc5_.§ "Z§);
            }
            if(_loc5_.§^N§)
            {
               if(_loc6_)
               {
                  _loc6_.glow(§ !3§.§,_§);
               }
               else if(_loc4_ is §&$§)
               {
                  §&$§(_loc4_).glow(§ !3§.§,_§);
               }
            }
            else if(_loc5_.§?"c§)
            {
               _loc6_.glow(§ !3§.§!!f§);
            }
         }
         return _loc4_;
      }
      
      public function §"Y§(param1:String) : Boolean
      {
         if(!this.§0!4§)
         {
            return false;
         }
         return this.§0!4§.indexOf(param1) >= 0;
      }
      
      public function § #,§(param1:String) : void
      {
         if(!this.§0!4§)
         {
            this.§0!4§ = new Vector.<String>(0);
         }
         this.§0!4§.push(param1);
      }
      
      public function §7"f§() : Vector.<String>
      {
         if(this.§0!4§)
         {
            return this.§0!4§.concat();
         }
         return null;
      }
      
      public function §;!5§() : int
      {
         var _loc2_:Vector.<String> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:int = 0;
         if(this.§0!4§)
         {
            _loc2_ = this.§0!4§.concat();
            _loc3_ = _loc2_.length - 1;
            while(_loc3_ >= 0)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§!"m§.length)
               {
                  if((_loc5_ = _loc2_.indexOf(this.§!"m§[_loc4_])) >= 0)
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
         if(this.§;H§)
         {
            this.§;H§.dispose();
            this.§;H§ = null;
         }
      }
      
      override public function gameOver(param1:int) : void
      {
         this.§-&§ = param1;
         this.§6X§ = true;
      }
      
      public function §`!k§() : void
      {
         this.§6X§ = false;
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§0!B§, param4:Number) : §>"w§
      {
         var _loc5_:§8X§;
         if((_loc5_ = §+!X§.getBackground(param1)) is §`[§)
         {
            return new §5"p§(§`[§(_loc5_),param2,param3,§`"D§.soundManager,param4,!§6!R§.§%!f§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
   }
}
