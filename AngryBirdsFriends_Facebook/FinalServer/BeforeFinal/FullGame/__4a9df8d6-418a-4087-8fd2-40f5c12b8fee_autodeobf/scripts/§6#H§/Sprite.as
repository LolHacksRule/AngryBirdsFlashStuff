package §6#H§
{
   import §!$;§.Event;
   import §'!j§.§^$$§;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §6`§:Vector.<§<O§>;
      
      private var §&"i§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§7#G§();
         super.dispose();
      }
      
      private function §7#G§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§6`§)
         {
            _loc1_ = 0;
            _loc2_ = this.§6`§.length;
            while(_loc1_ < _loc2_)
            {
               this.§6`§[_loc1_].dispose();
               _loc1_++;
            }
            this.§6`§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§&"i§ = true;
         §%!W§(Event.§4"g§);
      }
      
      public function §@"S§() : void
      {
         this.§&"i§ = false;
         this.§7#G§();
      }
      
      public function get §6h§() : Boolean
      {
         return this.§6`§ != null || this.§&"i§;
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Context3D = null;
         var _loc7_:int = 0;
         var _loc8_:§<O§ = null;
         var _loc9_:int = 0;
         if(this.§6`§ || this.§&"i§)
         {
            if(this.§6`§ == null)
            {
               this.§6`§ = new Vector.<§<O§>(0);
            }
            if(this.§&"i§)
            {
               §<O§.§9#K§(this,this.§6`§);
               this.§&"i§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§6`§.length;
            _loc5_ = param1.§7"g§;
            _loc6_ = param1.context;
            param1.§5!#§();
            param1.§0!g§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§6`§[_loc7_]).blendMode == §+!'§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§?"@§(param1,_loc5_,_loc3_,_loc9_);
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
