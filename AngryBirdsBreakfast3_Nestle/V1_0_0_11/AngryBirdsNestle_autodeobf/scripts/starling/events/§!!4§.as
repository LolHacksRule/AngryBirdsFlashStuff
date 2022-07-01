package starling.events
{
   import §`!B§.Stage;
   import flash.geom.Point;
   
   public class §!!4§
   {
      
      private static const §4!x§:Number = 0.3;
      
      private static const §?s§:Number = 25;
      
      private static var §^F§:Vector.<int> = new Vector.<int>(0);
      
      private static var §0x§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §`!c§:Stage;
      
      private var §1^§:Number;
      
      private var §7!w§:Number;
      
      private var §!!_§:§^"%§;
      
      private var §0!G§:Vector.<§[y§>;
      
      private var §0!g§:Vector.<Array>;
      
      private var §&=§:Vector.<§[y§>;
      
      private var §-!]§:Boolean = false;
      
      private var §6A§:Boolean = false;
      
      public function §!!4§(param1:Stage)
      {
         super();
         this.§`!c§ = param1;
         this.§7!w§ = 0;
         this.§1^§ = 0;
         this.§0!G§ = new Vector.<§[y§>(0);
         this.§0!g§ = new Vector.<Array>(0);
         this.§&=§ = new Vector.<§[y§>(0);
         this.§`!c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8=§);
         this.§`!c§.addEventListener(KeyboardEvent.KEY_UP,this.§8=§);
      }
      
      public function dispose() : void
      {
         this.§`!c§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8=§);
         this.§`!c§.removeEventListener(KeyboardEvent.KEY_UP,this.§8=§);
         if(this.§!!_§)
         {
            this.§!!_§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§[y§ = null;
         var _loc5_:§[y§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§1^§ += param1;
         this.§7!w§ = 0;
         if(this.§&=§.length > 0)
         {
            _loc2_ = this.§&=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1^§ - this.§&=§[_loc2_].timestamp > §4!x§)
               {
                  this.§&=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§0!g§.length > 0)
         {
            §^F§.length = §0x§.length = 0;
            for each(_loc5_ in this.§0!G§)
            {
               if(_loc5_.phase == §^!G§.§]m§ || _loc5_.phase == §^!G§.§-H§)
               {
                  _loc5_.§^"-§(§^!G§.§@!G§);
               }
            }
            while(this.§0!g§.length > 0 && §^F§.indexOf(this.§0!g§[this.§0!g§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§0!g§.pop())[0] as int;
               if((_loc4_ = this.§%!j§(_loc3_)) && _loc4_.phase == §^!G§.HOVER && _loc4_.target)
               {
                  §0x§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^!n§.apply(this,_loc7_);
               §^F§.push(_loc3_);
            }
            for each(_loc6_ in §0x§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§-o§,this.§0!G§,this.§-!]§,this.§6A§));
               }
            }
            for each(_loc3_ in §^F§)
            {
               if((_loc4_ = this.§%!j§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§-o§,this.§0!G§,this.§-!]§,this.§6A§));
               }
            }
            _loc2_ = this.§0!G§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0!G§[_loc2_].phase == §^!G§.§;"0§)
               {
                  this.§0!G§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§7!w§ += 0.00001;
         }
      }
      
      public function §=!o§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§0!g§.unshift(arguments);
         if(this.§6A§ && this.§?!6§ && param1 == 0)
         {
            this.§!!_§.§@J§(param3,param4,this.§-!]§);
            this.§0!g§.unshift([1,param2,this.§!!_§.§=!,§,this.§!!_§.§;I§]);
         }
      }
      
      private function §^!n§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§[y§;
         if((_loc6_ = this.§%!j§(param1)) == null)
         {
            _loc6_ = new §[y§(param1,param3,param4,param2,null);
            this.§&!k§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§^"-§(param2);
         _loc6_.§0!8§(this.§1^§ + this.§7!w§);
         if(param2 == §^!G§.HOVER || param2 == §^!G§.§]m§)
         {
            _loc6_.§#2§(this.§`!c§.hitTest(_loc5_,true));
         }
         if(param2 == §^!G§.§]m§)
         {
            this.§1U§(_loc6_);
         }
      }
      
      private function §8=§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§[y§ = null;
         var _loc4_:§[y§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§6A§;
            this.§6A§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§?!6§ && _loc2_ != this.§6A§)
            {
               this.§!!_§.visible = this.§6A§;
               this.§!!_§.§ d§(this.§`!c§.stageWidth / 2,this.§`!c§.stageHeight / 2);
               _loc3_ = this.§%!j§(0);
               _loc4_ = this.§%!j§(1);
               if(_loc3_)
               {
                  this.§!!_§.§@J§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §^!G§.§;"0§)
               {
                  this.§0!g§.unshift([1,§^!G§.§;"0§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§6A§ && _loc3_)
               {
                  if(_loc3_.phase == §^!G§.§]m§ || _loc3_.phase == §^!G§.§-H§)
                  {
                     this.§0!g§.unshift([1,§^!G§.§]m§,this.§!!_§.§=!,§,this.§!!_§.§;I§]);
                  }
                  else
                  {
                     this.§0!g§.unshift([1,§^!G§.HOVER,this.§!!_§.§=!,§,this.§!!_§.§;I§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§-!]§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §1U§(param1:§[y§) : void
      {
         var _loc4_:§[y§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§[y§ = null;
         var _loc3_:Number = §?s§ * §?s§;
         for each(_loc4_ in this.§&=§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§!o§(_loc2_.§""%§ + 1);
            this.§&=§.splice(this.§&=§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§!o§(1);
         }
         this.§&=§.push(param1.clone());
      }
      
      private function §&!k§(param1:§[y§) : void
      {
         var _loc2_:int = this.§0!G§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§0!G§[_loc2_].id == param1.id)
            {
               this.§0!G§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§0!G§.push(param1);
      }
      
      private function §%!j§(param1:int) : §[y§
      {
         var _loc2_:§[y§ = null;
         for each(_loc2_ in this.§0!G§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §?!6§() : Boolean
      {
         return this.§!!_§ != null;
      }
      
      public function set §?!6§(param1:Boolean) : void
      {
         if(this.§?!6§ == param1)
         {
            return;
         }
      }
   }
}
