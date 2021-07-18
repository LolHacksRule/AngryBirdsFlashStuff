package §9$§
{
   import §?a§.Event;
   import §^a§.§'"1§;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §##t§:Vector.<§3f§>;
      
      private var §+"P§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§6#B§();
         super.dispose();
      }
      
      private function §6#B§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§##t§)
         {
            _loc1_ = 0;
            _loc2_ = this.§##t§.length;
            while(_loc1_ < _loc2_)
            {
               this.§##t§[_loc1_].dispose();
               _loc1_++;
            }
            this.§##t§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§+"P§ = true;
         §;#o§(Event.§8#i§);
      }
      
      public function §^"0§() : void
      {
         this.§+"P§ = false;
         this.§6#B§();
      }
      
      public function get §^"n§() : Boolean
      {
         return this.§##t§ != null || this.§+"P§;
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc7_:int = 0;
         var _loc8_:§3f§ = null;
         var _loc9_:int = 0;
         if(this.§##t§ || this.§+"P§)
         {
            if(this.§##t§ == null)
            {
               this.§##t§ = new Vector.<§3f§>(0);
            }
            if(this.§+"P§)
            {
               §3f§.§]!w§(this,this.§##t§);
               this.§+"P§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§##t§.length;
            _loc5_ = param1.§?9§;
            param1.context;
            param1.§^!u§();
            param1.§"#R§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§##t§[_loc7_]).blendMode == §["T§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§function§(param1,_loc5_,_loc3_,_loc9_);
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
