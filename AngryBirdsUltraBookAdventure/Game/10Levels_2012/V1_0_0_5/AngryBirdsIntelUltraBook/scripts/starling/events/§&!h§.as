package starling.events
{
   import §'!9§.Stage;
   import flash.geom.Point;
   
   public class §&!h§
   {
      
      private static const §2!]§:Number = 0.3;
      
      private static const §3K§:Number = 25;
      
      private static var §#!G§:Vector.<int> = new Vector.<int>(0);
      
      private static var §use §:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §;p§:Stage;
      
      private var §5Y§:Number;
      
      private var §>-§:Number;
      
      private var §7!q§:§#a§;
      
      private var § !R§:Vector.<§`i§>;
      
      private var §4S§:Vector.<Array>;
      
      private var §7!0§:Vector.<§`i§>;
      
      private var §=!V§:Boolean = false;
      
      private var §+E§:Boolean = false;
      
      public function §&!h§(param1:Stage)
      {
         super();
         this.§;p§ = param1;
         this.§>-§ = 0;
         this.§5Y§ = 0;
         this.§ !R§ = new Vector.<§`i§>(0);
         this.§4S§ = new Vector.<Array>(0);
         this.§7!0§ = new Vector.<§`i§>(0);
         this.§;p§.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!4§);
         this.§;p§.addEventListener(KeyboardEvent.KEY_UP,this.§0!4§);
      }
      
      public function dispose() : void
      {
         this.§;p§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!4§);
         this.§;p§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!4§);
         if(this.§7!q§)
         {
            this.§7!q§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§`i§ = null;
         var _loc5_:§`i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§5Y§ += param1;
         this.§>-§ = 0;
         if(this.§7!0§.length > 0)
         {
            _loc2_ = this.§7!0§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§5Y§ - this.§7!0§[_loc2_].timestamp > §2!]§)
               {
                  this.§7!0§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§4S§.length > 0)
         {
            §#!G§.length = §use §.length = 0;
            for each(_loc5_ in this.§ !R§)
            {
               if(_loc5_.phase == §;@§.§`O§ || _loc5_.phase == §;@§.§ 8§)
               {
                  _loc5_.§=I§(§;@§.§]M§);
               }
            }
            while(this.§4S§.length > 0 && §#!G§.indexOf(this.§4S§[this.§4S§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§4S§.pop())[0] as int;
               if((_loc4_ = this.§;s§(_loc3_)) && _loc4_.phase == §;@§.§ ]§ && _loc4_.target)
               {
                  §use §.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§`U§.apply(this,_loc7_);
               §#!G§.push(_loc3_);
            }
            for each(_loc6_ in §use §)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
               }
            }
            for each(_loc3_ in §#!G§)
            {
               if((_loc4_ = this.§;s§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
               }
            }
            _loc2_ = this.§ !R§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ !R§[_loc2_].phase == §;@§.§>!q§)
               {
                  this.§ !R§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§>-§ += 0.00001;
         }
      }
      
      public function §43§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§4S§.unshift(arguments);
         if(this.§+E§ && this.§7J§ && param1 == 0)
         {
            this.§7!q§.§?>§(param3,param4,this.§=!V§);
            this.§4S§.unshift([1,param2,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
         }
      }
      
      private function §`U§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§`i§;
         if((_loc6_ = this.§;s§(param1)) == null)
         {
            _loc6_ = new §`i§(param1,param3,param4,param2,null);
            this.§!<§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§=I§(param2);
         _loc6_.§3!c§(this.§5Y§ + this.§>-§);
         if(param2 == §;@§.§ ]§ || param2 == §;@§.§`O§)
         {
            _loc6_.§`"§(this.§;p§.hitTest(_loc5_,true));
         }
         if(param2 == §;@§.§`O§)
         {
            this.§%`§(_loc6_);
         }
      }
      
      private function §0!4§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§`i§ = null;
         var _loc4_:§`i§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§+E§;
            this.§+E§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§7J§ && _loc2_ != this.§+E§)
            {
               this.§7!q§.visible = this.§+E§;
               this.§7!q§.§'e§(this.§;p§.stageWidth / 2,this.§;p§.stageHeight / 2);
               _loc3_ = this.§;s§(0);
               _loc4_ = this.§;s§(1);
               if(_loc3_)
               {
                  this.§7!q§.§?>§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;@§.§>!q§)
               {
                  this.§4S§.unshift([1,§;@§.§>!q§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§+E§ && _loc3_)
               {
                  if(_loc3_.phase == §;@§.§`O§ || _loc3_.phase == §;@§.§ 8§)
                  {
                     this.§4S§.unshift([1,§;@§.§`O§,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                  }
                  else
                  {
                     this.§4S§.unshift([1,§;@§.§ ]§,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§=!V§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%`§(param1:§`i§) : void
      {
         var _loc4_:§`i§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§`i§ = null;
         var _loc3_:Number = §3K§ * §3K§;
         for each(_loc4_ in this.§7!0§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§?x§(_loc2_.§>+§ + 1);
            this.§7!0§.splice(this.§7!0§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§?x§(1);
         }
         this.§7!0§.push(param1.clone());
      }
      
      private function §!<§(param1:§`i§) : void
      {
         var _loc2_:int = this.§ !R§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ !R§[_loc2_].id == param1.id)
            {
               this.§ !R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ !R§.push(param1);
      }
      
      private function §;s§(param1:int) : §`i§
      {
         var _loc2_:§`i§ = null;
         for each(_loc2_ in this.§ !R§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §7J§() : Boolean
      {
         return this.§7!q§ != null;
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         if(this.§7J§ == param1)
         {
            return;
         }
      }
   }
}
