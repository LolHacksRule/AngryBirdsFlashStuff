package starling.events
{
   import §2!g§.Stage;
   import flash.geom.Point;
   
   public class §<!e§
   {
      
      private static const §0!"§:Number = 0.3;
      
      private static const §%!_§:Number = 25;
      
      private static var §+!2§:Vector.<int> = new Vector.<int>(0);
      
      private static var §1f§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §&!M§:Stage;
      
      private var §4!o§:Number;
      
      private var §]!`§:Number;
      
      private var §'!=§:§"!a§;
      
      private var §@!m§:Vector.<§'t§>;
      
      private var §[!2§:Vector.<Array>;
      
      private var §9^§:Vector.<§'t§>;
      
      private var §2!e§:Boolean = false;
      
      private var §=U§:Boolean = false;
      
      public function §<!e§(param1:Stage)
      {
         super();
         this.§&!M§ = param1;
         this.§]!`§ = 0;
         this.§4!o§ = 0;
         this.§@!m§ = new Vector.<§'t§>(0);
         this.§[!2§ = new Vector.<Array>(0);
         this.§9^§ = new Vector.<§'t§>(0);
         this.§&!M§.addEventListener(KeyboardEvent.KEY_DOWN,this.§"!e§);
         this.§&!M§.addEventListener(KeyboardEvent.KEY_UP,this.§"!e§);
      }
      
      public function dispose() : void
      {
         this.§&!M§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"!e§);
         this.§&!M§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!e§);
         if(this.§'!=§)
         {
            this.§'!=§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§'t§ = null;
         var _loc5_:§'t§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§4!o§ += param1;
         this.§]!`§ = 0;
         if(this.§9^§.length > 0)
         {
            _loc2_ = this.§9^§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!o§ - this.§9^§[_loc2_].timestamp > §0!"§)
               {
                  this.§9^§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§[!2§.length > 0)
         {
            §+!2§.length = §1f§.length = 0;
            for each(_loc5_ in this.§@!m§)
            {
               if(_loc5_.phase == §&!'§.§6m§ || _loc5_.phase == §&!'§.§@!H§)
               {
                  _loc5_.§6!I§(§&!'§.§7!%§);
               }
            }
            while(this.§[!2§.length > 0 && §+!2§.indexOf(this.§[!2§[this.§[!2§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§[!2§.pop())[0] as int;
               if((_loc4_ = this.§1!6§(_loc3_)) && _loc4_.phase == §&!'§.§%! § && _loc4_.target)
               {
                  §1f§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§[s§.apply(this,_loc7_);
               §+!2§.push(_loc3_);
            }
            for each(_loc6_ in §1f§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7`§,this.§@!m§,this.§2!e§,this.§=U§));
               }
            }
            for each(_loc3_ in §+!2§)
            {
               if((_loc4_ = this.§1!6§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7`§,this.§@!m§,this.§2!e§,this.§=U§));
               }
            }
            _loc2_ = this.§@!m§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@!m§[_loc2_].phase == §&!'§.§-u§)
               {
                  this.§@!m§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]!`§ += 0.00001;
         }
      }
      
      public function §=N§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§[!2§.unshift(arguments);
         if(this.§=U§ && this.simulateMultitouch && param1 == 0)
         {
            this.§'!=§.§&!]§(param3,param4,this.§2!e§);
            this.§[!2§.unshift([1,param2,this.§'!=§.§=!$§,this.§'!=§.§&r§]);
         }
      }
      
      private function §[s§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§'t§;
         if((_loc6_ = this.§1!6§(param1)) == null)
         {
            _loc6_ = new §'t§(param1,param3,param4,param2,null);
            this.§#!H§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§6!I§(param2);
         _loc6_.§[a§(this.§4!o§ + this.§]!`§);
         if(param2 == §&!'§.§%! § || param2 == §&!'§.§6m§)
         {
            _loc6_.§3E§(this.§&!M§.hitTest(_loc5_,true));
         }
         if(param2 == §&!'§.§6m§)
         {
            this.§<Z§(_loc6_);
         }
      }
      
      private function §"!e§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§'t§ = null;
         var _loc4_:§'t§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§=U§;
            this.§=U§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§=U§)
            {
               this.§'!=§.visible = this.§=U§;
               this.§'!=§.§]<§(this.§&!M§.stageWidth / 2,this.§&!M§.stageHeight / 2);
               _loc3_ = this.§1!6§(0);
               _loc4_ = this.§1!6§(1);
               if(_loc3_)
               {
                  this.§'!=§.§&!]§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §&!'§.§-u§)
               {
                  this.§[!2§.unshift([1,§&!'§.§-u§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§=U§ && _loc3_)
               {
                  if(_loc3_.phase == §&!'§.§6m§ || _loc3_.phase == §&!'§.§@!H§)
                  {
                     this.§[!2§.unshift([1,§&!'§.§6m§,this.§'!=§.§=!$§,this.§'!=§.§&r§]);
                  }
                  else
                  {
                     this.§[!2§.unshift([1,§&!'§.§%! §,this.§'!=§.§=!$§,this.§'!=§.§&r§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§2!e§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<Z§(param1:§'t§) : void
      {
         var _loc4_:§'t§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§'t§ = null;
         var _loc3_:Number = §%!_§ * §%!_§;
         for each(_loc4_ in this.§9^§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§4%§(_loc2_.§8@§ + 1);
            this.§9^§.splice(this.§9^§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§4%§(1);
         }
         this.§9^§.push(param1.clone());
      }
      
      private function §#!H§(param1:§'t§) : void
      {
         var _loc2_:int = this.§@!m§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§@!m§[_loc2_].id == param1.id)
            {
               this.§@!m§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§@!m§.push(param1);
      }
      
      private function §1!6§(param1:int) : §'t§
      {
         var _loc2_:§'t§ = null;
         for each(_loc2_ in this.§@!m§)
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
         return this.§'!=§ != null;
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
