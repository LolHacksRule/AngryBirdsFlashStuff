package §;"0§
{
   public class §>!7§ extends §@$§
   {
       
      
      protected var §'P§:String;
      
      protected var §&"?§:String;
      
      protected var §2z§:String;
      
      protected var §9!4§:String;
      
      protected var §!p§:Number = 1.0;
      
      protected var §&!A§:Number = 1.0;
      
      protected var §3"6§:Array;
      
      protected var §&V§:Boolean;
      
      public function §>!7§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§'P§ = param6;
         this.§&"?§ = param7;
         this.§2z§ = param8;
         this.§9!4§ = param9;
         this.§&!A§ = param11;
         this.§!p§ = param12;
         if(!param13)
         {
            this.§3"6§ = [];
         }
         else
         {
            this.§3"6§ = param13.concat();
         }
      }
      
      public function get § A§() : String
      {
         return this.§'P§;
      }
      
      public function get §6^§() : String
      {
         return this.§&"?§;
      }
      
      public function get §==§() : String
      {
         return this.§2z§;
      }
      
      public function get §2!A§() : String
      {
         return this.§9!4§;
      }
      
      public function get textureScale() : Number
      {
         return this.§!p§;
      }
      
      public function get §5f§() : Array
      {
         return this.§3"6§.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.§&V§)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function §^!z§(param1:Object, param2:Boolean = false) : void
      {
         var _loc16_:int = 0;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Boolean = false;
         var _loc25_:Array = null;
         var _loc3_:String = param1.sprite;
         var _loc5_:Number = (!!param1.scale ? param1.scale : 1) * this.§&!A§;
         var _loc6_:Number = !!param1.zDistance ? Number(param1.zDistance) : Number(0);
         var _loc7_:Number = !!param1.offsetX ? Number(param1.offsetX) : Number(0);
         var _loc8_:Number = !!param1.offsetY ? Number(param1.offsetY) : Number(0);
         var _loc9_:Number = param1.angleMult !== undefined ? Number(param1.angleMult) : Number(0);
         var _loc10_:Number = param1.scaleSpeed !== undefined ? Number(param1.scaleSpeed) : Number(1);
         var _loc11_:Number = param1.xMult !== undefined ? Number(param1.xMult) : Number(1);
         var _loc12_:Number = param1.yMult !== undefined ? Number(param1.yMult) : Number(1);
         var _loc13_:Boolean = param1.bLoop !== undefined ? Boolean(param1.bLoop) : true;
         var _loc14_:§0!2§ = null;
         _loc14_ = new §0!2§(_loc3_,null,_loc5_,_loc6_,_loc7_,_loc8_,_loc11_,_loc12_,_loc9_,_loc10_,param2,_loc13_,false,false);
         var _loc15_:Object;
         if(_loc15_ = param1.elements)
         {
            if((_loc16_ = _loc15_.amount) > 0)
            {
               _loc17_ = !!_loc15_.x ? Number(_loc15_.x) : Number(0);
               _loc18_ = !!_loc15_.y ? Number(_loc15_.y) : Number(0);
               _loc19_ = !!_loc15_.w ? Number(_loc15_.w) : Number(1);
               _loc20_ = !!_loc15_.h ? Number(_loc15_.h) : Number(1);
               _loc21_ = !!_loc15_.velX ? Number(_loc15_.velX) : Number(0);
               _loc22_ = !!_loc15_.velY ? Number(_loc15_.velY) : Number(0);
               _loc23_ = !!_loc15_.variation ? Number(_loc15_.variation) : Number(0);
               _loc24_ = _loc15_.randomRotation;
               _loc25_ = _loc15_.sprites;
               _loc14_.§?!J§(_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_,_loc25_);
            }
         }
         §0"-§.push(_loc14_);
      }
      
      public function §1P§(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§^!z§(_loc3_,false);
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
                  this.§^!z§(_loc6_,true);
                  this.§&V§ = true;
               }
            }
         }
      }
   }
}
