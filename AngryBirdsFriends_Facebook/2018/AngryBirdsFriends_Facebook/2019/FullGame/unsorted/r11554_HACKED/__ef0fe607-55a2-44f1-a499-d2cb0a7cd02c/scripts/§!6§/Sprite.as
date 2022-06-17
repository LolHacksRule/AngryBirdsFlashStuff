package §!6§
{
   import §!#`§.Event;
   import §]"P§.§4!9§;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §8"#§:Vector.<§9$'§>;
      
      private var §?!J§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§%!X§();
         super.dispose();
      }
      
      private function §%!X§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§8"#§)
         {
            _loc1_ = 0;
            _loc2_ = this.§8"#§.length;
            while(_loc1_ < _loc2_)
            {
               this.§8"#§[_loc1_].dispose();
               _loc1_++;
            }
            this.§8"#§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§?!J§ = true;
         §&#l§(Event.§%!L§);
      }
      
      public function §,U§() : void
      {
         this.§?!J§ = false;
         this.§%!X§();
      }
      
      public function get §7"S§() : Boolean
      {
         return this.§8"#§ != null || this.§?!J§;
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc7_:int = 0;
         var _loc8_:§9$'§ = null;
         var _loc9_:int = 0;
         if(this.§8"#§ || this.§?!J§)
         {
            if(this.§8"#§ == null)
            {
               this.§8"#§ = new Vector.<§9$'§>(0);
            }
            if(this.§?!J§)
            {
               §9$'§.§=!9§(this,this.§8"#§);
               this.§?!J§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§8"#§.length;
            _loc5_ = param1.§!!M§;
            param1.context;
            param1.§%"6§();
            param1.§&!f§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§8"#§[_loc7_]).blendMode == §9#6§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§`#Z§(param1,_loc5_,_loc3_,_loc9_);
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
