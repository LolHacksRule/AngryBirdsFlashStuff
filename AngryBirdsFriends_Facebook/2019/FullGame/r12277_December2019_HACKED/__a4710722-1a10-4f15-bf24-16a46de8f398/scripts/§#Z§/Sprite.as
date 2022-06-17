package §#Z§
{
   import §&§.§""F§;
   import §<!S§.Event;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §%"!§:Vector.<§6!`§>;
      
      private var §^#9§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§#!@§();
         super.dispose();
      }
      
      private function §#!@§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§%"!§)
         {
            _loc1_ = 0;
            _loc2_ = this.§%"!§.length;
            while(_loc1_ < _loc2_)
            {
               this.§%"!§[_loc1_].dispose();
               _loc1_++;
            }
            this.§%"!§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§^#9§ = true;
         §"!C§(Event.§?%§);
      }
      
      public function §>+§() : void
      {
         this.§^#9§ = false;
         this.§#!@§();
      }
      
      public function get §@q§() : Boolean
      {
         return this.§%"!§ != null || this.§^#9§;
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc7_:int = 0;
         var _loc8_:§6!`§ = null;
         var _loc9_:int = 0;
         if(this.§%"!§ || this.§^#9§)
         {
            if(this.§%"!§ == null)
            {
               this.§%"!§ = new Vector.<§6!`§>(0);
            }
            if(this.§^#9§)
            {
               §6!`§.§0"9§(this,this.§%"!§);
               this.§^#9§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§%"!§.length;
            _loc5_ = param1.§-A§;
            param1.context;
            param1.§&"!§();
            param1.§?$&§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§%"!§[_loc7_]).blendMode == §1$§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§%O§(param1,_loc5_,_loc3_,_loc9_);
               _loc7_++;
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
