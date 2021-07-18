package starling.events
{
   import §!!U§.Stage;
   import flash.geom.Point;
   
   public class §8"e§
   {
      
      private static const §@![§:Number = 0.3;
      
      private static const §7z§:Number = 25;
      
      private static var §?!<§:Vector.<int> = new Vector.<int>(0);
      
      private static var §0#Z§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § "u§:Stage;
      
      private var §-#H§:Number;
      
      private var § "Z§:Number;
      
      private var §3"[§:§1"H§;
      
      private var §97§:Vector.<§[#W§>;
      
      private var §6"F§:Vector.<Array>;
      
      private var §1#&§:Vector.<§[#W§>;
      
      private var §'!s§:Boolean = false;
      
      private var §<#J§:Boolean = false;
      
      public function §8"e§(param1:Stage)
      {
         super();
         this.§ "u§ = param1;
         this.§ "Z§ = 0;
         this.§-#H§ = 0;
         this.§97§ = new Vector.<§[#W§>(0);
         this.§6"F§ = new Vector.<Array>(0);
         this.§1#&§ = new Vector.<§[#W§>(0);
         this.§ "u§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[#O§);
         this.§ "u§.addEventListener(KeyboardEvent.KEY_UP,this.§[#O§);
      }
      
      public function dispose() : void
      {
         this.§ "u§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[#O§);
         this.§ "u§.removeEventListener(KeyboardEvent.KEY_UP,this.§[#O§);
         if(this.§3"[§)
         {
            this.§3"[§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§[#W§ = null;
         var _loc5_:§[#W§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§-#H§ += param1;
         this.§ "Z§ = 0;
         if(this.§1#&§.length > 0)
         {
            _loc2_ = this.§1#&§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§-#H§ - this.§1#&§[_loc2_].timestamp > §@![§)
               {
                  this.§1#&§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§6"F§.length > 0)
         {
            §?!<§.length = §0#Z§.length = 0;
            for each(_loc5_ in this.§97§)
            {
               if(_loc5_.phase == §5X§.§<!A§ || _loc5_.phase == §5X§.§!!Z§)
               {
                  _loc5_.§%"8§(§5X§.§@#6§);
               }
            }
            while(this.§6"F§.length > 0 && §?!<§.indexOf(this.§6"F§[this.§6"F§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§6"F§.pop())[0] as int;
               if((_loc4_ = this.§"#1§(_loc3_)) && _loc4_.phase == §5X§.§;!s§ && _loc4_.target)
               {
                  §0#Z§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§6!L§.apply(this,_loc7_);
               §?!<§.push(_loc3_);
            }
            for each(_loc6_ in §0#Z§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§;!1§,this.§97§,this.§'!s§,this.§<#J§));
               }
            }
            for each(_loc3_ in §?!<§)
            {
               if((_loc4_ = this.§"#1§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§;!1§,this.§97§,this.§'!s§,this.§<#J§));
               }
            }
            _loc2_ = this.§97§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§97§[_loc2_].phase == §5X§.§"!u§)
               {
                  this.§97§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§ "Z§ += 0.00001;
         }
      }
      
      public function §2#S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§6"F§.unshift(arguments);
         if(this.§<#J§ && this.§`#"§ && param1 == 0)
         {
            this.§3"[§.§[=§(param3,param4,this.§'!s§);
            this.§6"F§.unshift([1,param2,this.§3"[§.§,"'§,this.§3"[§.§="P§]);
         }
      }
      
      private function §6!L§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§[#W§;
         if((_loc6_ = this.§"#1§(param1)) == null)
         {
            _loc6_ = new §[#W§(param1,param3,param4,param2,null);
            this.§+"y§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§%"8§(param2);
         _loc6_.§2S§(this.§-#H§ + this.§ "Z§);
         if(param2 == §5X§.§;!s§ || param2 == §5X§.§<!A§)
         {
            _loc6_.§2!`§(this.§ "u§.hitTest(_loc5_,true));
         }
         if(param2 == §5X§.§<!A§)
         {
            this.§&m§(_loc6_);
         }
      }
      
      private function §[#O§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§[#W§ = null;
         var _loc4_:§[#W§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§<#J§;
            this.§<#J§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§`#"§ && _loc2_ != this.§<#J§)
            {
               this.§3"[§.visible = this.§<#J§;
               this.§3"[§.§8!=§(this.§ "u§.stageWidth / 2,this.§ "u§.stageHeight / 2);
               _loc3_ = this.§"#1§(0);
               _loc4_ = this.§"#1§(1);
               if(_loc3_)
               {
                  this.§3"[§.§[=§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §5X§.§"!u§)
               {
                  this.§6"F§.unshift([1,§5X§.§"!u§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§<#J§ && _loc3_)
               {
                  if(_loc3_.phase == §5X§.§<!A§ || _loc3_.phase == §5X§.§!!Z§)
                  {
                     this.§6"F§.unshift([1,§5X§.§<!A§,this.§3"[§.§,"'§,this.§3"[§.§="P§]);
                  }
                  else
                  {
                     this.§6"F§.unshift([1,§5X§.§;!s§,this.§3"[§.§,"'§,this.§3"[§.§="P§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§'!s§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §&m§(param1:§[#W§) : void
      {
         var _loc4_:§[#W§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§[#W§ = null;
         var _loc3_:Number = §7z§ * §7z§;
         for each(_loc4_ in this.§1#&§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§4#D§(_loc2_.§`l§ + 1);
            this.§1#&§.splice(this.§1#&§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§4#D§(1);
         }
         this.§1#&§.push(param1.clone());
      }
      
      private function §+"y§(param1:§[#W§) : void
      {
         var _loc2_:int = this.§97§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§97§[_loc2_].id == param1.id)
            {
               this.§97§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§97§.push(param1);
      }
      
      private function §"#1§(param1:int) : §[#W§
      {
         var _loc2_:§[#W§ = null;
         for each(_loc2_ in this.§97§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §`#"§() : Boolean
      {
         return this.§3"[§ != null;
      }
      
      public function set §`#"§(param1:Boolean) : void
      {
         if(this.§`#"§ == param1)
         {
            return;
         }
      }
   }
}
