package starling.events
{
   import §&o§.Stage;
   import flash.geom.Point;
   
   public class §3g§
   {
      
      private static const §+j§:Number = 0.3;
      
      private static const §>=§:Number = 25;
      
      private static var §9!N§:Vector.<int> = new Vector.<int>(0);
      
      private static var §]E§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §]!M§:Stage;
      
      private var §7h§:Number;
      
      private var §5!"§:Number;
      
      private var § U§:§;=§;
      
      private var §,!$§:Vector.<§7+§>;
      
      private var §1!&§:Vector.<Array>;
      
      private var §-%§:Vector.<§7+§>;
      
      private var § b§:Boolean = false;
      
      private var §@<§:Boolean = false;
      
      public function §3g§(param1:Stage)
      {
         super();
         this.§]!M§ = param1;
         this.§5!"§ = 0;
         this.§7h§ = 0;
         this.§,!$§ = new Vector.<§7+§>(0);
         this.§1!&§ = new Vector.<Array>(0);
         this.§-%§ = new Vector.<§7+§>(0);
         this.§]!M§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§]!M§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§]!M§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§]!M§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§ U§)
         {
            this.§ U§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§7+§ = null;
         var _loc5_:§7+§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§7h§ += param1;
         this.§5!"§ = 0;
         if(this.§-%§.length > 0)
         {
            _loc2_ = this.§-%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7h§ - this.§-%§[_loc2_].timestamp > §+j§)
               {
                  this.§-%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§1!&§.length > 0)
         {
            §9!N§.length = §]E§.length = 0;
            for each(_loc5_ in this.§,!$§)
            {
               if(_loc5_.phase == §>;§.§7!=§ || _loc5_.phase == §>;§.§"%§)
               {
                  _loc5_.§-!A§(§>;§.§0!9§);
               }
            }
            while(this.§1!&§.length > 0 && §9!N§.indexOf(this.§1!&§[this.§1!&§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§1!&§.pop())[0] as int;
               if((_loc4_ = this.§-1§(_loc3_)) && _loc4_.phase == §>;§.§+S§ && _loc4_.target)
               {
                  §]E§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§@!8§.apply(this,_loc7_);
               §9!N§.push(_loc3_);
            }
            for each(_loc6_ in §]E§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!4§,this.§,!$§,this.§ b§,this.§@<§));
               }
            }
            for each(_loc3_ in §9!N§)
            {
               if((_loc4_ = this.§-1§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!4§,this.§,!$§,this.§ b§,this.§@<§));
               }
            }
            _loc2_ = this.§,!$§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!$§[_loc2_].phase == §>;§.§1!@§)
               {
                  this.§,!$§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§5!"§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§1!&§.unshift(arguments);
         if(this.§@<§ && this.§?I§ && param1 == 0)
         {
            this.§ U§.§%!$§(param3,param4,this.§ b§);
            this.§1!&§.unshift([1,param2,this.§ U§.§-!3§,this.§ U§.§7k§]);
         }
      }
      
      private function §@!8§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§7+§;
         if((_loc6_ = this.§-1§(param1)) == null)
         {
            _loc6_ = new §7+§(param1,param3,param4,param2,null);
            this.§3!B§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§-!A§(param2);
         _loc6_.§2y§(this.§7h§ + this.§5!"§);
         if(param2 == §>;§.§+S§ || param2 == §>;§.§7!=§)
         {
            _loc6_.§'^§(this.§]!M§.hitTest(_loc5_,true));
         }
         if(param2 == §>;§.§7!=§)
         {
            this.§7!>§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§7+§ = null;
         var _loc4_:§7+§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§@<§;
            this.§@<§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§?I§ && _loc2_ != this.§@<§)
            {
               this.§ U§.visible = this.§@<§;
               this.§ U§.§#q§(this.§]!M§.stageWidth / 2,this.§]!M§.stageHeight / 2);
               _loc3_ = this.§-1§(0);
               _loc4_ = this.§-1§(1);
               if(_loc3_)
               {
                  this.§ U§.§%!$§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §>;§.§1!@§)
               {
                  this.§1!&§.unshift([1,§>;§.§1!@§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§@<§ && _loc3_)
               {
                  if(_loc3_.phase == §>;§.§7!=§ || _loc3_.phase == §>;§.§"%§)
                  {
                     this.§1!&§.unshift([1,§>;§.§7!=§,this.§ U§.§-!3§,this.§ U§.§7k§]);
                  }
                  else
                  {
                     this.§1!&§.unshift([1,§>;§.§+S§,this.§ U§.§-!3§,this.§ U§.§7k§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§ b§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §7!>§(param1:§7+§) : void
      {
         var _loc4_:§7+§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§7+§ = null;
         var _loc3_:Number = §>=§ * §>=§;
         for each(_loc4_ in this.§-%§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§]!4§(_loc2_.§?[§ + 1);
            this.§-%§.splice(this.§-%§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§]!4§(1);
         }
         this.§-%§.push(param1.clone());
      }
      
      private function §3!B§(param1:§7+§) : void
      {
         var _loc2_:int = this.§,!$§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§,!$§[_loc2_].id == param1.id)
            {
               this.§,!$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!$§.push(param1);
      }
      
      private function §-1§(param1:int) : §7+§
      {
         var _loc2_:§7+§ = null;
         for each(_loc2_ in this.§,!$§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §?I§() : Boolean
      {
         return this.§ U§ != null;
      }
      
      public function set §?I§(param1:Boolean) : void
      {
         if(this.§?I§ == param1)
         {
            return;
         }
      }
   }
}
