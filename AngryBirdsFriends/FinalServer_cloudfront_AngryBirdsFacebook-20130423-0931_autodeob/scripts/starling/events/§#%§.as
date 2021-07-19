package starling.events
{
   import §'!6§.Stage;
   import flash.geom.Point;
   
   public class §#%§
   {
      
      private static const §7"§:Number = 0.3;
      
      private static const §<v§:Number = 25;
      
      private static var §-O§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7!v§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §,">§:Stage;
      
      private var §[-§:Number;
      
      private var §;7§:Number;
      
      private var §-u§:§5w§;
      
      private var §3t§:Vector.<§;!G§>;
      
      private var §^!I§:Vector.<Array>;
      
      private var §&"4§:Vector.<§;!G§>;
      
      private var §,!=§:Boolean = false;
      
      private var §4>§:Boolean = false;
      
      public function §#%§(param1:Stage)
      {
         super();
         this.§,">§ = param1;
         this.§;7§ = 0;
         this.§[-§ = 0;
         this.§3t§ = new Vector.<§;!G§>(0);
         this.§^!I§ = new Vector.<Array>(0);
         this.§&"4§ = new Vector.<§;!G§>(0);
         this.§,">§.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !y§);
         this.§,">§.addEventListener(KeyboardEvent.KEY_UP,this.§ !y§);
      }
      
      public function dispose() : void
      {
         this.§,">§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !y§);
         this.§,">§.removeEventListener(KeyboardEvent.KEY_UP,this.§ !y§);
         if(this.§-u§)
         {
            this.§-u§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;!G§ = null;
         var _loc5_:§;!G§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§[-§ += param1;
         this.§;7§ = 0;
         if(this.§&"4§.length > 0)
         {
            _loc2_ = this.§&"4§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[-§ - this.§&"4§[_loc2_].timestamp > §7"§)
               {
                  this.§&"4§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§^!I§.length > 0)
         {
            §-O§.length = §7!v§.length = 0;
            for each(_loc5_ in this.§3t§)
            {
               if(_loc5_.phase == §'! §.§?""§ || _loc5_.phase == §'! §.§8!Y§)
               {
                  _loc5_.§`!K§(§'! §.§#!i§);
               }
            }
            while(this.§^!I§.length > 0 && §-O§.indexOf(this.§^!I§[this.§^!I§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§^!I§.pop())[0] as int;
               if((_loc4_ = this.§`"=§(_loc3_)) && _loc4_.phase == §'! §.§5"G§ && _loc4_.target)
               {
                  §7!v§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§5!p§.apply(this,_loc7_);
               §-O§.push(_loc3_);
            }
            for each(_loc6_ in §7!v§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!M§,this.§3t§,this.§,!=§,this.§4>§));
               }
            }
            for each(_loc3_ in §-O§)
            {
               if((_loc4_ = this.§`"=§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!M§,this.§3t§,this.§,!=§,this.§4>§));
               }
            }
            _loc2_ = this.§3t§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3t§[_loc2_].phase == §'! §.§2!3§)
               {
                  this.§3t§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§;7§ += 0.00001;
         }
      }
      
      public function §0"%§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§^!I§.unshift(arguments);
         if(this.§4>§ && this.§`!m§ && param1 == 0)
         {
            this.§-u§.§+v§(param3,param4,this.§,!=§);
            this.§^!I§.unshift([1,param2,this.§-u§.§+9§,this.§-u§.§<!Q§]);
         }
      }
      
      private function §5!p§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;!G§;
         if((_loc6_ = this.§`"=§(param1)) == null)
         {
            _loc6_ = new §;!G§(param1,param3,param4,param2,null);
            this.§@"O§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§`!K§(param2);
         _loc6_.§ !#§(this.§[-§ + this.§;7§);
         if(param2 == §'! §.§5"G§ || param2 == §'! §.§?""§)
         {
            _loc6_.§#O§(this.§,">§.hitTest(_loc5_,true));
         }
         if(param2 == §'! §.§?""§)
         {
            this.§-!V§(_loc6_);
         }
      }
      
      private function § !y§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!G§ = null;
         var _loc4_:§;!G§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4>§;
            this.§4>§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§`!m§ && _loc2_ != this.§4>§)
            {
               this.§-u§.visible = this.§4>§;
               this.§-u§.§],§(this.§,">§.stageWidth / 2,this.§,">§.stageHeight / 2);
               _loc3_ = this.§`"=§(0);
               _loc4_ = this.§`"=§(1);
               if(_loc3_)
               {
                  this.§-u§.§+v§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §'! §.§2!3§)
               {
                  this.§^!I§.unshift([1,§'! §.§2!3§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4>§ && _loc3_)
               {
                  if(_loc3_.phase == §'! §.§?""§ || _loc3_.phase == §'! §.§8!Y§)
                  {
                     this.§^!I§.unshift([1,§'! §.§?""§,this.§-u§.§+9§,this.§-u§.§<!Q§]);
                  }
                  else
                  {
                     this.§^!I§.unshift([1,§'! §.§5"G§,this.§-u§.§+9§,this.§-u§.§<!Q§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§,!=§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §-!V§(param1:§;!G§) : void
      {
         var _loc4_:§;!G§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;!G§ = null;
         var _loc3_:Number = §<v§ * §<v§;
         for each(_loc4_ in this.§&"4§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§8"Y§(_loc2_.§]!<§ + 1);
            this.§&"4§.splice(this.§&"4§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§8"Y§(1);
         }
         this.§&"4§.push(param1.clone());
      }
      
      private function §@"O§(param1:§;!G§) : void
      {
         var _loc2_:int = this.§3t§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§3t§[_loc2_].id == param1.id)
            {
               this.§3t§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3t§.push(param1);
      }
      
      private function §`"=§(param1:int) : §;!G§
      {
         var _loc2_:§;!G§ = null;
         for each(_loc2_ in this.§3t§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §`!m§() : Boolean
      {
         return this.§-u§ != null;
      }
      
      public function set §`!m§(param1:Boolean) : void
      {
         if(this.§`!m§ == param1)
         {
            return;
         }
      }
   }
}
