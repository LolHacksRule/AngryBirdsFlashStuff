package §,#e§
{
   import §"#k§.§79§;
   import §,$&§.Event;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §-?§:Vector.<§^n§>;
      
      private var §!h§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§!>§();
         super.dispose();
      }
      
      private function §!>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§-?§)
         {
            _loc1_ = 0;
            _loc2_ = this.§-?§.length;
            while(_loc1_ < _loc2_)
            {
               this.§-?§[_loc1_].dispose();
               _loc1_++;
            }
            this.§-?§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§!h§ = true;
         §!!Y§(Event.§+#,§);
      }
      
      public function §^$@§() : void
      {
         this.§!h§ = false;
         this.§!>§();
      }
      
      public function get §^'§() : Boolean
      {
         return this.§-?§ != null || this.§!h§;
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Context3D = null;
         var _loc7_:int = 0;
         var _loc8_:§^n§ = null;
         var _loc9_:int = 0;
         if(this.§-?§ || this.§!h§)
         {
            if(this.§-?§ == null)
            {
               this.§-?§ = new Vector.<§^n§>(0);
            }
            if(this.§!h§)
            {
               §^n§.§[!d§(this,this.§-?§);
               this.§!h§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§-?§.length;
            _loc5_ = param1.§9!§;
            _loc6_ = param1.context;
            param1.§6@§();
            param1.§ "4§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§-?§[_loc7_]).blendMode == §4!_§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§4"V§(param1,_loc5_,_loc3_,_loc9_);
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
