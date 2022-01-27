package starling.events
{
   import §3H§.Stage;
   import flash.geom.Point;
   
   public class §]o§
   {
      
      private static const §6T§:Number = 0.3;
      
      private static const §>!+§:Number = 25;
      
      private static var §&!+§:Vector.<int> = new Vector.<int>(0);
      
      private static var §8!,§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §<!#§:Stage;
      
      private var §[4§:Number;
      
      private var § "§:Number;
      
      private var §&"§:§?!E§;
      
      private var §85§:Vector.<§>w§>;
      
      private var §&!H§:Vector.<Array>;
      
      private var §>!O§:Vector.<§>w§>;
      
      private var §4"§:Boolean = false;
      
      private var §0d§:Boolean = false;
      
      public function §]o§(param1:Stage)
      {
         super();
         this.§<!#§ = param1;
         this.§ "§ = 0;
         this.§[4§ = 0;
         this.§85§ = new Vector.<§>w§>(0);
         this.§&!H§ = new Vector.<Array>(0);
         this.§>!O§ = new Vector.<§>w§>(0);
         this.§<!#§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[M§);
         this.§<!#§.addEventListener(KeyboardEvent.KEY_UP,this.§[M§);
      }
      
      public function dispose() : void
      {
         this.§<!#§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[M§);
         this.§<!#§.removeEventListener(KeyboardEvent.KEY_UP,this.§[M§);
         if(this.§&"§)
         {
            this.§&"§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§>w§ = null;
         var _loc5_:§>w§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§[4§ += param1;
         this.§ "§ = 0;
         if(this.§>!O§.length > 0)
         {
            _loc2_ = this.§>!O§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[4§ - this.§>!O§[_loc2_].timestamp > §6T§)
               {
                  this.§>!O§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§&!H§.length > 0)
         {
            §&!+§.length = §8!,§.length = 0;
            for each(_loc5_ in this.§85§)
            {
               if(_loc5_.phase == §&3§.§'i§ || _loc5_.phase == §&3§.§3!J§)
               {
                  _loc5_.§;3§(§&3§.§`!1§);
               }
            }
            while(this.§&!H§.length > 0 && §&!+§.indexOf(this.§&!H§[this.§&!H§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§&!H§.pop())[0] as int;
               if((_loc4_ = this.§^!H§(_loc3_)) && _loc4_.phase == §&3§.§0r§ && _loc4_.target)
               {
                  §8!,§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§4V§.apply(this,_loc7_);
               §&!+§.push(_loc3_);
            }
            for each(_loc6_ in §8!,§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!'§,this.§85§,this.§4"§,this.§0d§));
               }
            }
            for each(_loc3_ in §&!+§)
            {
               if((_loc4_ = this.§^!H§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!'§,this.§85§,this.§4"§,this.§0d§));
               }
            }
            _loc2_ = this.§85§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§85§[_loc2_].phase == §&3§.§9!>§)
               {
                  this.§85§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§ "§ += 0.00001;
         }
      }
      
      public function §[!3§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§&!H§.unshift(arguments);
         if(this.§0d§ && this.§"p§ && param1 == 0)
         {
            this.§&"§.§8u§(param3,param4,this.§4"§);
            this.§&!H§.unshift([1,param2,this.§&"§.§^B§,this.§&"§.§]M§]);
         }
      }
      
      private function §4V§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§>w§;
         if((_loc6_ = this.§^!H§(param1)) == null)
         {
            _loc6_ = new §>w§(param1,param3,param4,param2,null);
            this.§<l§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§;3§(param2);
         _loc6_.§%h§(this.§[4§ + this.§ "§);
         if(param2 == §&3§.§0r§ || param2 == §&3§.§'i§)
         {
            _loc6_.§'3§(this.§<!#§.hitTest(_loc5_,true));
         }
         if(param2 == §&3§.§'i§)
         {
            this.§;!1§(_loc6_);
         }
      }
      
      private function §[M§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§>w§ = null;
         var _loc4_:§>w§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§0d§;
            this.§0d§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§"p§ && _loc2_ != this.§0d§)
            {
               this.§&"§.visible = this.§0d§;
               this.§&"§.§9`§(this.§<!#§.stageWidth / 2,this.§<!#§.stageHeight / 2);
               _loc3_ = this.§^!H§(0);
               _loc4_ = this.§^!H§(1);
               if(_loc3_)
               {
                  this.§&"§.§8u§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §&3§.§9!>§)
               {
                  this.§&!H§.unshift([1,§&3§.§9!>§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§0d§ && _loc3_)
               {
                  if(_loc3_.phase == §&3§.§'i§ || _loc3_.phase == §&3§.§3!J§)
                  {
                     this.§&!H§.unshift([1,§&3§.§'i§,this.§&"§.§^B§,this.§&"§.§]M§]);
                  }
                  else
                  {
                     this.§&!H§.unshift([1,§&3§.§0r§,this.§&"§.§^B§,this.§&"§.§]M§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§4"§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;!1§(param1:§>w§) : void
      {
         var _loc4_:§>w§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§>w§ = null;
         var _loc3_:Number = §>!+§ * §>!+§;
         for each(_loc4_ in this.§>!O§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§%!=§(_loc2_.§?e§ + 1);
            this.§>!O§.splice(this.§>!O§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§%!=§(1);
         }
         this.§>!O§.push(param1.clone());
      }
      
      private function §<l§(param1:§>w§) : void
      {
         var _loc2_:int = this.§85§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§85§[_loc2_].id == param1.id)
            {
               this.§85§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§85§.push(param1);
      }
      
      private function §^!H§(param1:int) : §>w§
      {
         var _loc2_:§>w§ = null;
         for each(_loc2_ in this.§85§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"p§() : Boolean
      {
         return this.§&"§ != null;
      }
      
      public function set §"p§(param1:Boolean) : void
      {
         if(this.§"p§ == param1)
         {
            return;
         }
      }
   }
}
