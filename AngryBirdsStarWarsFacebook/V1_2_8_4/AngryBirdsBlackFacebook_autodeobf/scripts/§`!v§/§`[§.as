package §`!v§
{
   public class §`[§ extends §8X§
   {
       
      
      protected var §""C§:String;
      
      protected var §&"q§:String;
      
      protected var §^`§:String;
      
      protected var §"!b§:String;
      
      protected var §"!"§:Number = 1.0;
      
      protected var §#"5§:Number = 1.0;
      
      protected var §4!+§:Array;
      
      protected var §-!o§:Boolean;
      
      public function §`[§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§""C§ = param6;
         this.§&"q§ = param7;
         this.§^`§ = param8;
         this.§"!b§ = param9;
         this.§#"5§ = param11;
         this.§"!"§ = param12;
         if(!param13)
         {
            this.§4!+§ = [];
         }
         else
         {
            this.§4!+§ = param13.concat();
         }
      }
      
      public function get §?#"§() : String
      {
         return this.§""C§;
      }
      
      public function get §1#%§() : String
      {
         return this.§&"q§;
      }
      
      public function get §;!x§() : String
      {
         return this.§^`§;
      }
      
      public function get §>o§() : String
      {
         return this.§"!b§;
      }
      
      public function get textureScale() : Number
      {
         return this.§"!"§;
      }
      
      public function get §3!7§() : Array
      {
         return this.§4!+§.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.§-!o§)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function §="K§(param1:Object, param2:Boolean = false) : void
      {
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Boolean = false;
         var _loc27_:Array = null;
         var _loc3_:String = param1.sprite;
         var _loc5_:Number = (!!param1.scale ? param1.scale : 1) * this.§#"5§;
         var _loc6_:Number = !!param1.zDistance ? Number(param1.zDistance) : Number(0);
         var _loc7_:Number = !!param1.offsetX ? Number(param1.offsetX) : Number(0);
         var _loc8_:Number = !!param1.offsetY ? Number(param1.offsetY) : Number(0);
         var _loc9_:Number = param1.angleMult !== undefined ? Number(param1.angleMult) : Number(0);
         var _loc10_:Number = param1.scaleSpeed !== undefined ? Number(param1.scaleSpeed) : Number(1);
         var _loc11_:Number = param1.xMult !== undefined ? Number(param1.xMult) : Number(1);
         var _loc12_:Number = param1.yMult !== undefined ? Number(param1.yMult) : Number(1);
         var _loc13_:Boolean = param1.bLoop !== undefined ? Boolean(param1.bLoop) : true;
         var _loc14_:Number = param1.velX !== undefined ? Number(param1.velX) : Number(0);
         var _loc15_:Number = param1.velY !== undefined ? Number(param1.velY) : Number(0);
         var _loc16_:§7Z§ = null;
         _loc16_ = new §7Z§(_loc3_,null,_loc5_,_loc6_,_loc7_,_loc8_,_loc11_,_loc12_,_loc9_,_loc10_,_loc14_,_loc15_,param2,_loc13_,false,false);
         var _loc17_:Object;
         if(_loc17_ = param1.elements)
         {
            if((_loc18_ = _loc17_.amount) > 0)
            {
               _loc19_ = !!_loc17_.x ? Number(_loc17_.x) : Number(0);
               _loc20_ = !!_loc17_.y ? Number(_loc17_.y) : Number(0);
               _loc21_ = !!_loc17_.w ? Number(_loc17_.w) : Number(1);
               _loc22_ = !!_loc17_.h ? Number(_loc17_.h) : Number(1);
               _loc23_ = !!_loc17_.velX ? Number(_loc17_.velX) : Number(0);
               _loc24_ = !!_loc17_.velY ? Number(_loc17_.velY) : Number(0);
               _loc25_ = !!_loc17_.variation ? Number(_loc17_.variation) : Number(0);
               _loc26_ = _loc17_.randomRotation;
               _loc27_ = _loc17_.sprites;
               _loc16_.§^";§(_loc18_,_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_,_loc25_,_loc26_,_loc27_);
            }
         }
         §!#7§.push(_loc16_);
      }
      
      public function §0##§(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§="K§(_loc3_,false);
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
                  this.§="K§(_loc6_,true);
                  this.§-!o§ = true;
               }
            }
         }
      }
   }
}
