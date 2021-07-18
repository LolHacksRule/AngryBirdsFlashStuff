package starling.events
{
   import § N§.Stage;
   import flash.geom.Point;
   
   public class §#^§
   {
      
      private static const §+!L§:Number = 0.3;
      
      private static const §&S§:Number = 25;
      
      private static var §!!B§:Vector.<int> = new Vector.<int>(0);
      
      private static var §1!K§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@&§:Stage;
      
      private var §>!%§:Number;
      
      private var §!u§:Number;
      
      private var §30§:§?!'§;
      
      private var §&M§:Vector.<§!g§>;
      
      private var §#5§:Vector.<Array>;
      
      private var §>!6§:Vector.<§!g§>;
      
      private var §`A§:Boolean = false;
      
      private var §4§:Boolean = false;
      
      public function §#^§(param1:Stage)
      {
         super();
         this.§@&§ = param1;
         this.§!u§ = 0;
         this.§>!%§ = 0;
         this.§&M§ = new Vector.<§!g§>(0);
         this.§#5§ = new Vector.<Array>(0);
         this.§>!6§ = new Vector.<§!g§>(0);
         this.§@&§.addEventListener(KeyboardEvent.KEY_DOWN,this.§?M§);
         this.§@&§.addEventListener(KeyboardEvent.KEY_UP,this.§?M§);
      }
      
      public function dispose() : void
      {
         this.§@&§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§?M§);
         this.§@&§.removeEventListener(KeyboardEvent.KEY_UP,this.§?M§);
         if(this.§30§)
         {
            this.§30§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§!g§ = null;
         var _loc5_:§!g§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§>!%§ += param1;
         this.§!u§ = 0;
         if(this.§>!6§.length > 0)
         {
            _loc2_ = this.§>!6§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§>!%§ - this.§>!6§[_loc2_].timestamp > §+!L§)
               {
                  this.§>!6§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§#5§.length > 0)
         {
            §!!B§.length = §1!K§.length = 0;
            for each(_loc5_ in this.§&M§)
            {
               if(_loc5_.phase == §else§.§ R§ || _loc5_.phase == §else§.§&i§)
               {
                  _loc5_.§7b§(§else§.§=!,§);
               }
            }
            while(this.§#5§.length > 0 && §!!B§.indexOf(this.§#5§[this.§#5§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§#5§.pop())[0] as int;
               if((_loc4_ = this.§#!J§(_loc3_)) && _loc4_.phase == §else§.§+N§ && _loc4_.target)
               {
                  §1!K§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§0%§.apply(this,_loc7_);
               §!!B§.push(_loc3_);
            }
            for each(_loc6_ in §1!K§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§=!?§,this.§&M§,this.§`A§,this.§4§));
               }
            }
            for each(_loc3_ in §!!B§)
            {
               if((_loc4_ = this.§#!J§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§=!?§,this.§&M§,this.§`A§,this.§4§));
               }
            }
            _loc2_ = this.§&M§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&M§[_loc2_].phase == §else§.§1!9§)
               {
                  this.§&M§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§!u§ += 0.00001;
         }
      }
      
      public function §'!1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§#5§.unshift(arguments);
         if(this.§4§ && this.§"!R§ && param1 == 0)
         {
            this.§30§.§ <§(param3,param4,this.§`A§);
            this.§#5§.unshift([1,param2,this.§30§.§]<§,this.§30§.§[L§]);
         }
      }
      
      private function §0%§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§!g§;
         if((_loc6_ = this.§#!J§(param1)) == null)
         {
            _loc6_ = new §!g§(param1,param3,param4,param2,null);
            this.§@!J§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§7b§(param2);
         _loc6_.§0!A§(this.§>!%§ + this.§!u§);
         if(param2 == §else§.§+N§ || param2 == §else§.§ R§)
         {
            _loc6_.§9X§(this.§@&§.hitTest(_loc5_,true));
         }
         if(param2 == §else§.§ R§)
         {
            this.§ !-§(_loc6_);
         }
      }
      
      private function §?M§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§!g§ = null;
         var _loc4_:§!g§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4§;
            this.§4§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§"!R§ && _loc2_ != this.§4§)
            {
               this.§30§.visible = this.§4§;
               this.§30§.§"+§(this.§@&§.stageWidth / 2,this.§@&§.stageHeight / 2);
               _loc3_ = this.§#!J§(0);
               _loc4_ = this.§#!J§(1);
               if(_loc3_)
               {
                  this.§30§.§ <§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §else§.§1!9§)
               {
                  this.§#5§.unshift([1,§else§.§1!9§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4§ && _loc3_)
               {
                  if(_loc3_.phase == §else§.§ R§ || _loc3_.phase == §else§.§&i§)
                  {
                     this.§#5§.unshift([1,§else§.§ R§,this.§30§.§]<§,this.§30§.§[L§]);
                  }
                  else
                  {
                     this.§#5§.unshift([1,§else§.§+N§,this.§30§.§]<§,this.§30§.§[L§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§`A§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function § !-§(param1:§!g§) : void
      {
         var _loc4_:§!g§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§!g§ = null;
         var _loc3_:Number = §&S§ * §&S§;
         for each(_loc4_ in this.§>!6§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§@k§(_loc2_.§4e§ + 1);
            this.§>!6§.splice(this.§>!6§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§@k§(1);
         }
         this.§>!6§.push(param1.clone());
      }
      
      private function §@!J§(param1:§!g§) : void
      {
         var _loc2_:int = this.§&M§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&M§[_loc2_].id == param1.id)
            {
               this.§&M§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&M§.push(param1);
      }
      
      private function §#!J§(param1:int) : §!g§
      {
         var _loc2_:§!g§ = null;
         for each(_loc2_ in this.§&M§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"!R§() : Boolean
      {
         return this.§30§ != null;
      }
      
      public function set §"!R§(param1:Boolean) : void
      {
         if(this.§"!R§ == param1)
         {
            return;
         }
      }
   }
}
