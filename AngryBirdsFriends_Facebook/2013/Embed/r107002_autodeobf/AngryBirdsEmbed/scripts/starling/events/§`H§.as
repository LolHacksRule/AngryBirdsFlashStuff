package starling.events
{
   import §#!@§.Stage;
   import flash.geom.Point;
   
   public class §`H§
   {
      
      private static const §5f§:Number = 0.3;
      
      private static const §!e§:Number = 25;
      
      private static var §#d§:Vector.<int> = new Vector.<int>(0);
      
      private static var §?!3§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §`!"§:Stage;
      
      private var §&!A§:Number;
      
      private var §=Q§:Number;
      
      private var §4v§:§[c§;
      
      private var § N§:Vector.<§4F§>;
      
      private var §2!=§:Vector.<Array>;
      
      private var §`K§:Vector.<§4F§>;
      
      private var §5H§:Boolean = false;
      
      private var §^E§:Boolean = false;
      
      public function §`H§(param1:Stage)
      {
         super();
         this.§`!"§ = param1;
         this.§=Q§ = 0;
         this.§&!A§ = 0;
         this.§ N§ = new Vector.<§4F§>(0);
         this.§2!=§ = new Vector.<Array>(0);
         this.§`K§ = new Vector.<§4F§>(0);
         this.§`!"§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§`!"§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§`!"§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§`!"§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§4v§)
         {
            this.§4v§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4F§ = null;
         var _loc5_:§4F§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§&!A§ += param1;
         this.§=Q§ = 0;
         if(this.§`K§.length > 0)
         {
            _loc2_ = this.§`K§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&!A§ - this.§`K§[_loc2_].timestamp > §5f§)
               {
                  this.§`K§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§2!=§.length > 0)
         {
            §#d§.length = §?!3§.length = 0;
            for each(_loc5_ in this.§ N§)
            {
               if(_loc5_.phase == §;!8§.§]-§ || _loc5_.phase == §;!8§.§@[§)
               {
                  _loc5_.§+!5§(§;!8§.§!m§);
               }
            }
            while(this.§2!=§.length > 0 && §#d§.indexOf(this.§2!=§[this.§2!=§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§2!=§.pop())[0] as int;
               if((_loc4_ = this.§3g§(_loc3_)) && _loc4_.phase == §;!8§.§'!7§ && _loc4_.target)
               {
                  §?!3§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§3!&§.apply(this,_loc7_);
               §#d§.push(_loc3_);
            }
            for each(_loc6_ in §?!3§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§`!!§,this.§ N§,this.§5H§,this.§^E§));
               }
            }
            for each(_loc3_ in §#d§)
            {
               if((_loc4_ = this.§3g§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§`!!§,this.§ N§,this.§5H§,this.§^E§));
               }
            }
            _loc2_ = this.§ N§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ N§[_loc2_].phase == §;!8§.§^!1§)
               {
                  this.§ N§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§=Q§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§2!=§.unshift(arguments);
         if(this.§^E§ && this.§&O§ && param1 == 0)
         {
            this.§4v§.§2!D§(param3,param4,this.§5H§);
            this.§2!=§.unshift([1,param2,this.§4v§.§?!A§,this.§4v§.§!!7§]);
         }
      }
      
      private function §3!&§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4F§;
         if((_loc6_ = this.§3g§(param1)) == null)
         {
            _loc6_ = new §4F§(param1,param3,param4,param2,null);
            this.§1a§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§+!5§(param2);
         _loc6_.§1!B§(this.§&!A§ + this.§=Q§);
         if(param2 == §;!8§.§'!7§ || param2 == §;!8§.§]-§)
         {
            _loc6_.§ <§(this.§`!"§.hitTest(_loc5_,true));
         }
         if(param2 == §;!8§.§]-§)
         {
            this.§2Q§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4F§ = null;
         var _loc4_:§4F§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§^E§;
            this.§^E§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§&O§ && _loc2_ != this.§^E§)
            {
               this.§4v§.visible = this.§^E§;
               this.§4v§.§>S§(this.§`!"§.stageWidth / 2,this.§`!"§.stageHeight / 2);
               _loc3_ = this.§3g§(0);
               _loc4_ = this.§3g§(1);
               if(_loc3_)
               {
                  this.§4v§.§2!D§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;!8§.§^!1§)
               {
                  this.§2!=§.unshift([1,§;!8§.§^!1§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§^E§ && _loc3_)
               {
                  if(_loc3_.phase == §;!8§.§]-§ || _loc3_.phase == §;!8§.§@[§)
                  {
                     this.§2!=§.unshift([1,§;!8§.§]-§,this.§4v§.§?!A§,this.§4v§.§!!7§]);
                  }
                  else
                  {
                     this.§2!=§.unshift([1,§;!8§.§'!7§,this.§4v§.§?!A§,this.§4v§.§!!7§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§5H§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2Q§(param1:§4F§) : void
      {
         var _loc4_:§4F§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4F§ = null;
         var _loc3_:Number = §!e§ * §!e§;
         for each(_loc4_ in this.§`K§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§<?§(_loc2_.§8! § + 1);
            this.§`K§.splice(this.§`K§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§<?§(1);
         }
         this.§`K§.push(param1.clone());
      }
      
      private function §1a§(param1:§4F§) : void
      {
         var _loc2_:int = this.§ N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ N§[_loc2_].id == param1.id)
            {
               this.§ N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ N§.push(param1);
      }
      
      private function §3g§(param1:int) : §4F§
      {
         var _loc2_:§4F§ = null;
         for each(_loc2_ in this.§ N§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §&O§() : Boolean
      {
         return this.§4v§ != null;
      }
      
      public function set §&O§(param1:Boolean) : void
      {
         if(this.§&O§ == param1)
         {
            return;
         }
      }
   }
}
