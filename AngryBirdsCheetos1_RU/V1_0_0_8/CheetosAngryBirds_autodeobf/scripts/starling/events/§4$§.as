package starling.events
{
   import §;!Q§.Stage;
   import flash.geom.Point;
   
   public class §4$§
   {
      
      private static const §5!^§:Number = 0.3;
      
      private static const static:Number = 25;
      
      private static var §?A§:Vector.<int> = new Vector.<int>(0);
      
      private static var §@!_§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §4M§:Stage;
      
      private var §4G§:Number;
      
      private var §>!A§:Number;
      
      private var §#! §:§ !E§;
      
      private var §;P§:Vector.<§3S§>;
      
      private var §]N§:Vector.<Array>;
      
      private var §&y§:Vector.<§3S§>;
      
      private var §<!Q§:Boolean = false;
      
      private var §3^§:Boolean = false;
      
      public function §4$§(param1:Stage)
      {
         super();
         this.§4M§ = param1;
         this.§>!A§ = 0;
         this.§4G§ = 0;
         this.§;P§ = new Vector.<§3S§>(0);
         this.§]N§ = new Vector.<Array>(0);
         this.§&y§ = new Vector.<§3S§>(0);
         this.§4M§.addEventListener(KeyboardEvent.KEY_DOWN,this.§"l§);
         this.§4M§.addEventListener(KeyboardEvent.KEY_UP,this.§"l§);
      }
      
      public function dispose() : void
      {
         this.§4M§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"l§);
         this.§4M§.removeEventListener(KeyboardEvent.KEY_UP,this.§"l§);
         if(this.§#! §)
         {
            this.§#! §.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§3S§ = null;
         var _loc5_:§3S§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§4G§ += param1;
         this.§>!A§ = 0;
         if(this.§&y§.length > 0)
         {
            _loc2_ = this.§&y§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4G§ - this.§&y§[_loc2_].timestamp > §5!^§)
               {
                  this.§&y§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§]N§.length > 0)
         {
            §?A§.length = §@!_§.length = 0;
            for each(_loc5_ in this.§;P§)
            {
               if(_loc5_.phase == §"o§.§`Y§ || _loc5_.phase == §"o§.§]t§)
               {
                  _loc5_.§4!K§(§"o§.§&!4§);
               }
            }
            while(this.§]N§.length > 0 && §?A§.indexOf(this.§]N§[this.§]N§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§]N§.pop())[0] as int;
               if((_loc4_ = this.§,!,§(_loc3_)) && _loc4_.phase == §"o§.§^!`§ && _loc4_.target)
               {
                  §@!_§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§]!0§.apply(this,_loc7_);
               §?A§.push(_loc3_);
            }
            for each(_loc6_ in §@!_§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§ A§,this.§;P§,this.§<!Q§,this.§3^§));
               }
            }
            for each(_loc3_ in §?A§)
            {
               if((_loc4_ = this.§,!,§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§ A§,this.§;P§,this.§<!Q§,this.§3^§));
               }
            }
            _loc2_ = this.§;P§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;P§[_loc2_].phase == §"o§.§&!H§)
               {
                  this.§;P§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§>!A§ += 0.00001;
         }
      }
      
      public function §5!Q§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§]N§.unshift(arguments);
         if(this.§3^§ && this.§]!,§ && param1 == 0)
         {
            this.§#! §.§@!8§(param3,param4,this.§<!Q§);
            this.§]N§.unshift([1,param2,this.§#! §.§,!%§,this.§#! §.§#t§]);
         }
      }
      
      private function §]!0§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§3S§;
         if((_loc6_ = this.§,!,§(param1)) == null)
         {
            _loc6_ = new §3S§(param1,param3,param4,param2,null);
            this.§=T§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§4!K§(param2);
         _loc6_.§7?§(this.§4G§ + this.§>!A§);
         if(param2 == §"o§.§^!`§ || param2 == §"o§.§`Y§)
         {
            _loc6_.§#W§(this.§4M§.hitTest(_loc5_,true));
         }
         if(param2 == §"o§.§`Y§)
         {
            this.§!!!§(_loc6_);
         }
      }
      
      private function §"l§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§3S§ = null;
         var _loc4_:§3S§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§3^§;
            this.§3^§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§]!,§ && _loc2_ != this.§3^§)
            {
               this.§#! §.visible = this.§3^§;
               this.§#! §.§0!3§(this.§4M§.stageWidth / 2,this.§4M§.stageHeight / 2);
               _loc3_ = this.§,!,§(0);
               _loc4_ = this.§,!,§(1);
               if(_loc3_)
               {
                  this.§#! §.§@!8§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"o§.§&!H§)
               {
                  this.§]N§.unshift([1,§"o§.§&!H§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§3^§ && _loc3_)
               {
                  if(_loc3_.phase == §"o§.§`Y§ || _loc3_.phase == §"o§.§]t§)
                  {
                     this.§]N§.unshift([1,§"o§.§`Y§,this.§#! §.§,!%§,this.§#! §.§#t§]);
                  }
                  else
                  {
                     this.§]N§.unshift([1,§"o§.§^!`§,this.§#! §.§,!%§,this.§#! §.§#t§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§<!Q§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §!!!§(param1:§3S§) : void
      {
         var _loc4_:§3S§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§3S§ = null;
         var _loc3_:Number = static * static;
         for each(_loc4_ in this.§&y§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§6h§(_loc2_.§7!L§ + 1);
            this.§&y§.splice(this.§&y§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§6h§(1);
         }
         this.§&y§.push(param1.clone());
      }
      
      private function §=T§(param1:§3S§) : void
      {
         var _loc2_:int = this.§;P§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;P§[_loc2_].id == param1.id)
            {
               this.§;P§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;P§.push(param1);
      }
      
      private function §,!,§(param1:int) : §3S§
      {
         var _loc2_:§3S§ = null;
         for each(_loc2_ in this.§;P§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]!,§() : Boolean
      {
         return this.§#! § != null;
      }
      
      public function set §]!,§(param1:Boolean) : void
      {
         if(this.§]!,§ == param1)
         {
            return;
         }
      }
   }
}
