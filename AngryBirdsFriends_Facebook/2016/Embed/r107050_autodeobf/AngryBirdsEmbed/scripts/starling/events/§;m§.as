package starling.events
{
   import §90§.Stage;
   import flash.geom.Point;
   
   public class §;m§
   {
      
      private static const §#!-§:Number = 0.3;
      
      private static const §^'§:Number = 25;
      
      private static var §52§:Vector.<int> = new Vector.<int>(0);
      
      private static var §>!&§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §!^§:Stage;
      
      private var §4T§:Number;
      
      private var §'A§:Number;
      
      private var §4!C§:§1!4§;
      
      private var §2X§:Vector.<§#!<§>;
      
      private var §"S§:Vector.<Array>;
      
      private var §=C§:Vector.<§#!<§>;
      
      private var §`^§:Boolean = false;
      
      private var §1!§:Boolean = false;
      
      public function §;m§(param1:Stage)
      {
         super();
         this.§!^§ = param1;
         this.§'A§ = 0;
         this.§4T§ = 0;
         this.§2X§ = new Vector.<§#!<§>(0);
         this.§"S§ = new Vector.<Array>(0);
         this.§=C§ = new Vector.<§#!<§>(0);
         this.§!^§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§!^§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§!^§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§!^§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§4!C§)
         {
            this.§4!C§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§#!<§ = null;
         var _loc5_:§#!<§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§4T§ += param1;
         this.§'A§ = 0;
         if(this.§=C§.length > 0)
         {
            _loc2_ = this.§=C§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4T§ - this.§=C§[_loc2_].timestamp > §#!-§)
               {
                  this.§=C§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"S§.length > 0)
         {
            §52§.length = §>!&§.length = 0;
            for each(_loc5_ in this.§2X§)
            {
               if(_loc5_.phase == §=5§.§!o§ || _loc5_.phase == §=5§.§]$§)
               {
                  _loc5_.§2!O§(§=5§.§+!N§);
               }
            }
            while(this.§"S§.length > 0 && §52§.indexOf(this.§"S§[this.§"S§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"S§.pop())[0] as int;
               if((_loc4_ = this.§;M§(_loc3_)) && _loc4_.phase == §=5§.§%V§ && _loc4_.target)
               {
                  §>!&§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§03§.apply(this,_loc7_);
               §52§.push(_loc3_);
            }
            for each(_loc6_ in §>!&§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§,u§,this.§2X§,this.§`^§,this.§1!§));
               }
            }
            for each(_loc3_ in §52§)
            {
               if((_loc4_ = this.§;M§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§,u§,this.§2X§,this.§`^§,this.§1!§));
               }
            }
            _loc2_ = this.§2X§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§2X§[_loc2_].phase == §=5§.§'!$§)
               {
                  this.§2X§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§'A§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"S§.unshift(arguments);
         if(this.§1!§ && this.§!!4§ && param1 == 0)
         {
            this.§4!C§.§55§(param3,param4,this.§`^§);
            this.§"S§.unshift([1,param2,this.§4!C§.§ D§,this.§4!C§.§0!<§]);
         }
      }
      
      private function §03§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§#!<§;
         if((_loc6_ = this.§;M§(param1)) == null)
         {
            _loc6_ = new §#!<§(param1,param3,param4,param2,null);
            this.§'B§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§2!O§(param2);
         _loc6_.§=!%§(this.§4T§ + this.§'A§);
         if(param2 == §=5§.§%V§ || param2 == §=5§.§!o§)
         {
            _loc6_.§^§(this.§!^§.hitTest(_loc5_,true));
         }
         if(param2 == §=5§.§!o§)
         {
            this.§ >§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§#!<§ = null;
         var _loc4_:§#!<§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§1!§;
            this.§1!§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§!!4§ && _loc2_ != this.§1!§)
            {
               this.§4!C§.visible = this.§1!§;
               this.§4!C§.§[!6§(this.§!^§.stageWidth / 2,this.§!^§.stageHeight / 2);
               _loc3_ = this.§;M§(0);
               _loc4_ = this.§;M§(1);
               if(_loc3_)
               {
                  this.§4!C§.§55§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §=5§.§'!$§)
               {
                  this.§"S§.unshift([1,§=5§.§'!$§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§1!§ && _loc3_)
               {
                  if(_loc3_.phase == §=5§.§!o§ || _loc3_.phase == §=5§.§]$§)
                  {
                     this.§"S§.unshift([1,§=5§.§!o§,this.§4!C§.§ D§,this.§4!C§.§0!<§]);
                  }
                  else
                  {
                     this.§"S§.unshift([1,§=5§.§%V§,this.§4!C§.§ D§,this.§4!C§.§0!<§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§`^§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function § >§(param1:§#!<§) : void
      {
         var _loc4_:§#!<§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§#!<§ = null;
         var _loc3_:Number = §^'§ * §^'§;
         for each(_loc4_ in this.§=C§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§ !-§(_loc2_.§1!A§ + 1);
            this.§=C§.splice(this.§=C§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§ !-§(1);
         }
         this.§=C§.push(param1.clone());
      }
      
      private function §'B§(param1:§#!<§) : void
      {
         var _loc2_:int = this.§2X§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§2X§[_loc2_].id == param1.id)
            {
               this.§2X§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2X§.push(param1);
      }
      
      private function §;M§(param1:int) : §#!<§
      {
         var _loc2_:§#!<§ = null;
         for each(_loc2_ in this.§2X§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §!!4§() : Boolean
      {
         return this.§4!C§ != null;
      }
      
      public function set §!!4§(param1:Boolean) : void
      {
         if(this.§!!4§ == param1)
         {
            return;
         }
      }
   }
}
