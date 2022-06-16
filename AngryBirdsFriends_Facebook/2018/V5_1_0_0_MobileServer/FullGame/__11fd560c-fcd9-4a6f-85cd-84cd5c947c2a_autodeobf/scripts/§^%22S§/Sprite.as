package §^"S§
{
   import §5#m§.Event;
   import §?"e§.§[!Z§;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §]$%§:Vector.<§9$=§>;
      
      private var §4"[§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§%"N§();
         super.dispose();
      }
      
      private function §%"N§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§]$%§)
         {
            _loc1_ = 0;
            _loc2_ = this.§]$%§.length;
            while(_loc1_ < _loc2_)
            {
               this.§]$%§[_loc1_].dispose();
               _loc1_++;
            }
            this.§]$%§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§4"[§ = true;
         §&";§(Event.§,#j§);
      }
      
      public function §6"n§() : void
      {
         this.§4"[§ = false;
         this.§%"N§();
      }
      
      public function get §`!8§() : Boolean
      {
         return this.§]$%§ != null || this.§4"[§;
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Context3D = null;
         var _loc7_:int = 0;
         var _loc8_:§9$=§ = null;
         var _loc9_:int = 0;
         if(this.§]$%§ || this.§4"[§)
         {
            if(this.§]$%§ == null)
            {
               this.§]$%§ = new Vector.<§9$=§>(0);
            }
            if(this.§4"[§)
            {
               §9$=§.§'!%§(this,this.§]$%§);
               this.§4"[§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§]$%§.length;
            _loc5_ = param1.§4$,§;
            _loc6_ = param1.context;
            param1.§>#s§();
            param1.§>"b§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§]$%§[_loc7_]).blendMode == §>$7§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§[!h§(param1,_loc5_,_loc3_,_loc9_);
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
