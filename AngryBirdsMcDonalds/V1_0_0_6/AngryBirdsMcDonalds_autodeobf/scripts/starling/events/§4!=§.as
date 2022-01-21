package starling.events
{
   import §2![§.Stage;
   import flash.geom.Point;
   
   public class §4!=§
   {
      
      private static const §"!'§:Number = 0.3;
      
      private static const §>r§:Number = 25;
      
      private static var §for§:Vector.<int> = new Vector.<int>(0);
      
      private static var §8!i§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §]n§:Stage;
      
      private var §=!L§:Number;
      
      private var §%^§:Number;
      
      private var §'T§:§-!8§;
      
      private var §7!c§:Vector.<§"G§>;
      
      private var §;!$§:Vector.<Array>;
      
      private var §>w§:Vector.<§"G§>;
      
      private var §[!l§:Boolean = false;
      
      private var §+r§:Boolean = false;
      
      public function §4!=§(param1:Stage)
      {
         super();
         this.§]n§ = param1;
         this.§%^§ = 0;
         this.§=!L§ = 0;
         this.§7!c§ = new Vector.<§"G§>(0);
         this.§;!$§ = new Vector.<Array>(0);
         this.§>w§ = new Vector.<§"G§>(0);
         this.§]n§.addEventListener(KeyboardEvent.KEY_DOWN,this.§=8§);
         this.§]n§.addEventListener(KeyboardEvent.KEY_UP,this.§=8§);
      }
      
      public function dispose() : void
      {
         this.§]n§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=8§);
         this.§]n§.removeEventListener(KeyboardEvent.KEY_UP,this.§=8§);
         if(this.§'T§)
         {
            this.§'T§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§"G§ = null;
         var _loc5_:§"G§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=!L§ += param1;
         this.§%^§ = 0;
         if(this.§>w§.length > 0)
         {
            _loc2_ = this.§>w§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=!L§ - this.§>w§[_loc2_].timestamp > §"!'§)
               {
                  this.§>w§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§;!$§.length > 0)
         {
            §for§.length = §8!i§.length = 0;
            for each(_loc5_ in this.§7!c§)
            {
               if(_loc5_.phase == § !=§.§`U§ || _loc5_.phase == § !=§.§!!§)
               {
                  _loc5_.§@6§(§ !=§.§5!Q§);
               }
            }
            while(this.§;!$§.length > 0 && §for§.indexOf(this.§;!$§[this.§;!$§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§;!$§.pop())[0] as int;
               if((_loc4_ = this.§=!l§(_loc3_)) && _loc4_.phase == § !=§.§;;§ && _loc4_.target)
               {
                  §8!i§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§3!6§.apply(this,_loc7_);
               §for§.push(_loc3_);
            }
            for each(_loc6_ in §8!i§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§#+§,this.§7!c§,this.§[!l§,this.§+r§));
               }
            }
            for each(_loc3_ in §for§)
            {
               if((_loc4_ = this.§=!l§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§#+§,this.§7!c§,this.§[!l§,this.§+r§));
               }
            }
            _loc2_ = this.§7!c§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!c§[_loc2_].phase == § !=§.§`!T§)
               {
                  this.§7!c§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§%^§ += 0.00001;
         }
      }
      
      public function §<#§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§;!$§.unshift(arguments);
         if(this.§+r§ && this.simulateMultitouch && param1 == 0)
         {
            this.§'T§.§true§(param3,param4,this.§[!l§);
            this.§;!$§.unshift([1,param2,this.§'T§.§[!i§,this.§'T§.§]!F§]);
         }
      }
      
      private function §3!6§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"G§;
         if((_loc6_ = this.§=!l§(param1)) == null)
         {
            _loc6_ = new §"G§(param1,param3,param4,param2,null);
            this.§=!o§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§@6§(param2);
         _loc6_.§+!I§(this.§=!L§ + this.§%^§);
         if(param2 == § !=§.§;;§ || param2 == § !=§.§`U§)
         {
            _loc6_.§'D§(this.§]n§.hitTest(_loc5_,true));
         }
         if(param2 == § !=§.§`U§)
         {
            this.§#!K§(_loc6_);
         }
      }
      
      private function §=8§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"G§ = null;
         var _loc4_:§"G§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§+r§;
            this.§+r§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§+r§)
            {
               this.§'T§.visible = this.§+r§;
               this.§'T§.§6!'§(this.§]n§.stageWidth / 2,this.§]n§.stageHeight / 2);
               _loc3_ = this.§=!l§(0);
               _loc4_ = this.§=!l§(1);
               if(_loc3_)
               {
                  this.§'T§.§true§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != § !=§.§`!T§)
               {
                  this.§;!$§.unshift([1,§ !=§.§`!T§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§+r§ && _loc3_)
               {
                  if(_loc3_.phase == § !=§.§`U§ || _loc3_.phase == § !=§.§!!§)
                  {
                     this.§;!$§.unshift([1,§ !=§.§`U§,this.§'T§.§[!i§,this.§'T§.§]!F§]);
                  }
                  else
                  {
                     this.§;!$§.unshift([1,§ !=§.§;;§,this.§'T§.§[!i§,this.§'T§.§]!F§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§[!l§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §#!K§(param1:§"G§) : void
      {
         var _loc4_:§"G§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§"G§ = null;
         var _loc3_:Number = §>r§ * §>r§;
         for each(_loc4_ in this.§>w§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§>1§(_loc2_.§;f§ + 1);
            this.§>w§.splice(this.§>w§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§>1§(1);
         }
         this.§>w§.push(param1.clone());
      }
      
      private function §=!o§(param1:§"G§) : void
      {
         var _loc2_:int = this.§7!c§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!c§[_loc2_].id == param1.id)
            {
               this.§7!c§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!c§.push(param1);
      }
      
      private function §=!l§(param1:int) : §"G§
      {
         var _loc2_:§"G§ = null;
         for each(_loc2_ in this.§7!c§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§'T§ != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
