package starling.events
{
   import §]!6§.Stage;
   import flash.geom.Point;
   
   public class §]<§
   {
      
      private static const §4l§:Number = 0.3;
      
      private static const §,^§:Number = 25;
      
      private static var §>y§:Vector.<int> = new Vector.<int>(0);
      
      private static var §,!;§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §6Y§:Stage;
      
      private var §,<§:Number;
      
      private var §8r§:Number;
      
      private var §0I§:§=!9§;
      
      private var §7B§:Vector.<§[9§>;
      
      private var §3"§:Vector.<Array>;
      
      private var §>!;§:Vector.<§[9§>;
      
      private var §?!0§:Boolean = false;
      
      private var §;I§:Boolean = false;
      
      public function §]<§(param1:Stage)
      {
         super();
         this.§6Y§ = param1;
         this.§8r§ = 0;
         this.§,<§ = 0;
         this.§7B§ = new Vector.<§[9§>(0);
         this.§3"§ = new Vector.<Array>(0);
         this.§>!;§ = new Vector.<§[9§>(0);
         this.§6Y§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§6Y§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§6Y§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§6Y§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§0I§)
         {
            this.§0I§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§[9§ = null;
         var _loc5_:§[9§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§,<§ += param1;
         this.§8r§ = 0;
         if(this.§>!;§.length > 0)
         {
            _loc2_ = this.§>!;§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,<§ - this.§>!;§[_loc2_].timestamp > §4l§)
               {
                  this.§>!;§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§3"§.length > 0)
         {
            §>y§.length = §,!;§.length = 0;
            for each(_loc5_ in this.§7B§)
            {
               if(_loc5_.phase == §?c§.§?!§ || _loc5_.phase == §?c§.§7z§)
               {
                  _loc5_.§34§(§?c§.§<!4§);
               }
            }
            while(this.§3"§.length > 0 && §>y§.indexOf(this.§3"§[this.§3"§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§3"§.pop())[0] as int;
               if((_loc4_ = this.§1Y§(_loc3_)) && _loc4_.phase == §?c§.§0!2§ && _loc4_.target)
               {
                  §,!;§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§1=§.apply(this,_loc7_);
               §>y§.push(_loc3_);
            }
            for each(_loc6_ in §,!;§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§0!;§,this.§7B§,this.§?!0§,this.§;I§));
               }
            }
            for each(_loc3_ in §>y§)
            {
               if((_loc4_ = this.§1Y§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§0!;§,this.§7B§,this.§?!0§,this.§;I§));
               }
            }
            _loc2_ = this.§7B§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7B§[_loc2_].phase == §?c§.§,F§)
               {
                  this.§7B§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§8r§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§3"§.unshift(arguments);
         if(this.§;I§ && this.§"e§ && param1 == 0)
         {
            this.§0I§.§8!?§(param3,param4,this.§?!0§);
            this.§3"§.unshift([1,param2,this.§0I§.§1!G§,this.§0I§.§#P§]);
         }
      }
      
      private function §1=§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§[9§;
         if((_loc6_ = this.§1Y§(param1)) == null)
         {
            _loc6_ = new §[9§(param1,param3,param4,param2,null);
            this.§+! §(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§34§(param2);
         _loc6_.§^!3§(this.§,<§ + this.§8r§);
         if(param2 == §?c§.§0!2§ || param2 == §?c§.§?!§)
         {
            _loc6_.§!t§(this.§6Y§.hitTest(_loc5_,true));
         }
         if(param2 == §?c§.§?!§)
         {
            this.§<!?§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§[9§ = null;
         var _loc4_:§[9§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§;I§;
            this.§;I§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§"e§ && _loc2_ != this.§;I§)
            {
               this.§0I§.visible = this.§;I§;
               this.§0I§.§0!F§(this.§6Y§.stageWidth / 2,this.§6Y§.stageHeight / 2);
               _loc3_ = this.§1Y§(0);
               _loc4_ = this.§1Y§(1);
               if(_loc3_)
               {
                  this.§0I§.§8!?§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?c§.§,F§)
               {
                  this.§3"§.unshift([1,§?c§.§,F§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§;I§ && _loc3_)
               {
                  if(_loc3_.phase == §?c§.§?!§ || _loc3_.phase == §?c§.§7z§)
                  {
                     this.§3"§.unshift([1,§?c§.§?!§,this.§0I§.§1!G§,this.§0I§.§#P§]);
                  }
                  else
                  {
                     this.§3"§.unshift([1,§?c§.§0!2§,this.§0I§.§1!G§,this.§0I§.§#P§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§?!0§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<!?§(param1:§[9§) : void
      {
         var _loc4_:§[9§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§[9§ = null;
         var _loc3_:Number = §,^§ * §,^§;
         for each(_loc4_ in this.§>!;§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§>Y§(_loc2_.§;%§ + 1);
            this.§>!;§.splice(this.§>!;§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§>Y§(1);
         }
         this.§>!;§.push(param1.clone());
      }
      
      private function §+! §(param1:§[9§) : void
      {
         var _loc2_:int = this.§7B§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7B§[_loc2_].id == param1.id)
            {
               this.§7B§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7B§.push(param1);
      }
      
      private function §1Y§(param1:int) : §[9§
      {
         var _loc2_:§[9§ = null;
         for each(_loc2_ in this.§7B§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"e§() : Boolean
      {
         return this.§0I§ != null;
      }
      
      public function set §"e§(param1:Boolean) : void
      {
         if(this.§"e§ == param1)
         {
            return;
         }
      }
   }
}
