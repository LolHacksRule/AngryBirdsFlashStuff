package starling.events
{
   import §-!f§.Stage;
   import flash.geom.Point;
   
   public class §&!a§
   {
      
      private static const §`"4§:Number = 0.3;
      
      private static const §'!^§:Number = 25;
      
      private static var § !5§:Vector.<int> = new Vector.<int>(0);
      
      private static var §;u§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §`!"§:Stage;
      
      private var §^! §:Number;
      
      private var §3f§:Number;
      
      private var §7#§:§[!w§;
      
      private var §4!$§:Vector.<§`!=§>;
      
      private var §!A§:Vector.<Array>;
      
      private var §?"!§:Vector.<§`!=§>;
      
      private var §3!b§:Boolean = false;
      
      private var §1k§:Boolean = false;
      
      public function §&!a§(param1:Stage)
      {
         super();
         this.§`!"§ = param1;
         this.§3f§ = 0;
         this.§^! § = 0;
         this.§4!$§ = new Vector.<§`!=§>(0);
         this.§!A§ = new Vector.<Array>(0);
         this.§?"!§ = new Vector.<§`!=§>(0);
         this.§`!"§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8o§);
         this.§`!"§.addEventListener(KeyboardEvent.KEY_UP,this.§8o§);
      }
      
      public function dispose() : void
      {
         this.§`!"§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8o§);
         this.§`!"§.removeEventListener(KeyboardEvent.KEY_UP,this.§8o§);
         if(this.§7#§)
         {
            this.§7#§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§`!=§ = null;
         var _loc5_:§`!=§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§^! § += param1;
         this.§3f§ = 0;
         if(this.§?"!§.length > 0)
         {
            _loc2_ = this.§?"!§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^! § - this.§?"!§[_loc2_].timestamp > §`"4§)
               {
                  this.§?"!§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§!A§.length > 0)
         {
            § !5§.length = §;u§.length = 0;
            for each(_loc5_ in this.§4!$§)
            {
               if(_loc5_.phase == §-!C§.§#Y§ || _loc5_.phase == §-!C§.§#!l§)
               {
                  _loc5_.§"S§(§-!C§.§1!v§);
               }
            }
            while(this.§!A§.length > 0 && § !5§.indexOf(this.§!A§[this.§!A§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§!A§.pop())[0] as int;
               if((_loc4_ = this.§4k§(_loc3_)) && _loc4_.phase == §-!C§.HOVER && _loc4_.target)
               {
                  §;u§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&"§.apply(this,_loc7_);
               § !5§.push(_loc3_);
            }
            for each(_loc6_ in §;u§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§3!d§,this.§4!$§,this.§3!b§,this.§1k§));
               }
            }
            for each(_loc3_ in § !5§)
            {
               if((_loc4_ = this.§4k§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§3!d§,this.§4!$§,this.§3!b§,this.§1k§));
               }
            }
            _loc2_ = this.§4!$§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!$§[_loc2_].phase == §-!C§.§&""§)
               {
                  this.§4!$§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§3f§ += 0.00001;
         }
      }
      
      public function §&U§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§!A§.unshift(arguments);
         if(this.§1k§ && this.§=C§ && param1 == 0)
         {
            this.§7#§.§>!L§(param3,param4,this.§3!b§);
            this.§!A§.unshift([1,param2,this.§7#§.§2n§,this.§7#§.§21§]);
         }
      }
      
      private function §&"§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§`!=§;
         if((_loc6_ = this.§4k§(param1)) == null)
         {
            _loc6_ = new §`!=§(param1,param3,param4,param2,null);
            this.§0"#§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§"S§(param2);
         _loc6_.§,!v§(this.§^! § + this.§3f§);
         if(param2 == §-!C§.HOVER || param2 == §-!C§.§#Y§)
         {
            _loc6_.§&g§(this.§`!"§.hitTest(_loc5_,true));
         }
         if(param2 == §-!C§.§#Y§)
         {
            this.§5Q§(_loc6_);
         }
      }
      
      private function §8o§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§`!=§ = null;
         var _loc4_:§`!=§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§1k§;
            this.§1k§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§=C§ && _loc2_ != this.§1k§)
            {
               this.§7#§.visible = this.§1k§;
               this.§7#§.§7! §(this.§`!"§.stageWidth / 2,this.§`!"§.stageHeight / 2);
               _loc3_ = this.§4k§(0);
               _loc4_ = this.§4k§(1);
               if(_loc3_)
               {
                  this.§7#§.§>!L§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §-!C§.§&""§)
               {
                  this.§!A§.unshift([1,§-!C§.§&""§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§1k§ && _loc3_)
               {
                  if(_loc3_.phase == §-!C§.§#Y§ || _loc3_.phase == §-!C§.§#!l§)
                  {
                     this.§!A§.unshift([1,§-!C§.§#Y§,this.§7#§.§2n§,this.§7#§.§21§]);
                  }
                  else
                  {
                     this.§!A§.unshift([1,§-!C§.HOVER,this.§7#§.§2n§,this.§7#§.§21§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§3!b§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §5Q§(param1:§`!=§) : void
      {
         var _loc4_:§`!=§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§`!=§ = null;
         var _loc3_:Number = §'!^§ * §'!^§;
         for each(_loc4_ in this.§?"!§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§6m§(_loc2_.§,!U§ + 1);
            this.§?"!§.splice(this.§?"!§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§6m§(1);
         }
         this.§?"!§.push(param1.clone());
      }
      
      private function §0"#§(param1:§`!=§) : void
      {
         var _loc2_:int = this.§4!$§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§4!$§[_loc2_].id == param1.id)
            {
               this.§4!$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!$§.push(param1);
      }
      
      private function §4k§(param1:int) : §`!=§
      {
         var _loc2_:§`!=§ = null;
         for each(_loc2_ in this.§4!$§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §=C§() : Boolean
      {
         return this.§7#§ != null;
      }
      
      public function set §=C§(param1:Boolean) : void
      {
         if(this.§=C§ == param1)
         {
            return;
         }
      }
   }
}
