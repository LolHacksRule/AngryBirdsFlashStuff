package §4"Y§
{
   public class §,#1§ extends §+!q§
   {
       
      
      protected var §^"`§:String;
      
      protected var §>#t§:String;
      
      protected var §^#Z§:String;
      
      protected var § !j§:String;
      
      protected var §#$;§:Number = 1.0;
      
      protected var §#!1§:Number = 1.0;
      
      protected var §+!U§:Array;
      
      protected var §0"c§:Boolean;
      
      public function §,#1§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         super(param1,param2,param3,param4,-1,param5,null,param10);
         this.§^"`§ = param6;
         this.§>#t§ = param7;
         this.§^#Z§ = param8;
         this.§ !j§ = param9;
         this.§#!1§ = param11;
         this.§#$;§ = param12;
         if(!param13)
         {
            this.§+!U§ = [];
         }
         else
         {
            this.§+!U§ = param13.concat();
         }
      }
      
      public function get §<y§() : String
      {
         return this.§^"`§;
      }
      
      public function get §import§() : String
      {
         return this.§>#t§;
      }
      
      public function get §>!&§() : String
      {
         return this.§^#Z§;
      }
      
      public function get §6!P§() : String
      {
         return this.§ !j§;
      }
      
      public function get §!#Z§() : Number
      {
         return this.§#$;§;
      }
      
      public function get §""N§() : Array
      {
         return this.§+!U§.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.§0"c§)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function §5"4§(param1:Object, param2:Boolean = false) : void
      {
         var _loc4_:Array = null;
         var _loc23_:String = null;
         var _loc24_:int = 0;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Boolean = false;
         var _loc33_:Array = null;
         var _loc3_:String = param1.sprite;
         if(param1.sprites !== undefined)
         {
            _loc4_ = new Array();
            for each(_loc23_ in param1.sprites)
            {
               _loc4_.push(_loc23_);
            }
         }
         var _loc5_:Number = !!param1.frameTime ? Number(param1.frameTime * 1000) : Number(0);
         var _loc7_:Number = (!!param1.scale ? param1.scale : 1) * this.§#!1§;
         var _loc8_:Number = !!param1.zDistance ? Number(param1.zDistance) : Number(0);
         var _loc9_:Number = !!param1.offsetX ? Number(param1.offsetX) : Number(0);
         var _loc10_:Number = !!param1.offsetY ? Number(param1.offsetY) : Number(0);
         var _loc11_:Number = param1.angleMult !== undefined ? Number(param1.angleMult) : Number(0);
         var _loc12_:Number = param1.scaleSpeed !== undefined ? Number(param1.scaleSpeed) : Number(1);
         var _loc13_:Number = param1.xMult !== undefined ? Number(param1.xMult) : Number(1);
         var _loc14_:Number = param1.yMult !== undefined ? Number(param1.yMult) : Number(1);
         var _loc15_:Boolean = param1.bLoop !== undefined ? Boolean(param1.bLoop) : true;
         var _loc16_:Number = param1.velX !== undefined ? Number(param1.velX) : Number(0);
         var _loc17_:Number = param1.velY !== undefined ? Number(param1.velY) : Number(0);
         var _loc18_:Number = param1.moveStartOffsetX !== undefined ? Number(param1.moveStartOffsetX) : Number(0);
         var _loc19_:Number = param1.moveEndOffsetX !== undefined ? Number(param1.moveEndOffsetX) : Number(0);
         var _loc20_:Boolean = param1.visible !== undefined ? Boolean(param1.visible) : true;
         var _loc21_:§%!w§ = null;
         _loc21_ = new §%!w§(_loc3_,_loc4_,_loc5_,null,_loc7_,_loc8_,_loc9_,_loc10_,_loc13_,_loc14_,_loc11_,_loc12_,_loc16_,_loc17_,param2,_loc15_,false,_loc18_,_loc19_,false,_loc20_);
         var _loc22_:Object;
         if(_loc22_ = param1.elements)
         {
            if((_loc24_ = _loc22_.amount) > 0)
            {
               _loc25_ = !!_loc22_.x ? Number(_loc22_.x) : Number(0);
               _loc26_ = !!_loc22_.y ? Number(_loc22_.y) : Number(0);
               _loc27_ = !!_loc22_.w ? Number(_loc22_.w) : Number(1);
               _loc28_ = !!_loc22_.h ? Number(_loc22_.h) : Number(1);
               _loc29_ = !!_loc22_.velX ? Number(_loc22_.velX) : Number(0);
               _loc30_ = !!_loc22_.velY ? Number(_loc22_.velY) : Number(0);
               _loc31_ = !!_loc22_.variation ? Number(_loc22_.variation) : Number(0);
               _loc32_ = _loc22_.randomRotation;
               _loc33_ = _loc22_.sprites;
               _loc21_.§1#^§(_loc24_,_loc25_,_loc26_,_loc27_,_loc28_,_loc29_,_loc30_,_loc31_,_loc32_,_loc33_);
            }
         }
         §%g§.push(_loc21_);
      }
      
      public function §1$$§(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§5"4§(_loc3_,false);
         }
         for each(_loc4_ in param2)
         {
            if(_loc4_ is Array)
            {
               if((_loc5_ = _loc4_ as Array).length >= 4)
               {
                  _loc6_ = {
                     "sprite":_loc5_[1],
                     "scale":_loc5_[3],
                     "zDistance":_loc5_[2]
                  };
                  this.§5"4§(_loc6_,true);
                  this.§0"c§ = true;
               }
            }
         }
      }
   }
}
