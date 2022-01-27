package §+!a§
{
   public class §6p§ extends §@!_§
   {
       
      
      protected var §!4§:String;
      
      protected var §36§:String;
      
      protected var §7"0§:String;
      
      protected var §'[§:String;
      
      protected var §>!%§:Number = 1.0;
      
      protected var §=T§:Number = 1.0;
      
      protected var §%r§:Array;
      
      protected var §@!b§:Boolean;
      
      public function §6p§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§!4§ = param6;
         this.§36§ = param7;
         this.§7"0§ = param8;
         this.§'[§ = param9;
         this.§=T§ = param11;
         this.§>!%§ = param12;
         if(!param13)
         {
            this.§%r§ = [];
         }
         else
         {
            this.§%r§ = param13.concat();
         }
      }
      
      public function get §?"5§() : String
      {
         return this.§!4§;
      }
      
      public function get §4L§() : String
      {
         return this.§36§;
      }
      
      public function get §,n§() : String
      {
         return this.§7"0§;
      }
      
      public function get §%!R§() : String
      {
         return this.§'[§;
      }
      
      public function get textureScale() : Number
      {
         return this.§>!%§;
      }
      
      public function get §6!Q§() : Array
      {
         return this.§%r§.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.§@!b§)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function §+"F§(param1:Object, param2:Boolean = false) : void
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
         var _loc5_:Number = (!!param1.scale ? param1.scale : 1) * this.§=T§;
         var _loc6_:Number = !!param1.zDistance ? Number(param1.zDistance) : Number(0);
         var _loc7_:Number = !!param1.offsetX ? Number(param1.offsetX) : Number(0);
         var _loc8_:Number = !!param1.offsetY ? Number(param1.offsetY) : Number(0);
         var _loc9_:Number = param1.angleMult !== undefined ? Number(param1.angleMult) : Number(0);
         var _loc10_:Number = param1.scaleSpeed !== undefined ? Number(param1.scaleSpeed) : Number(1);
         var _loc11_:Number = param1.xMult !== undefined ? Number(param1.xMult) : Number(1);
         var _loc12_:Number = param1.yMult !== undefined ? Number(param1.yMult) : Number(1);
         var _loc13_:Boolean = param1.bLoop !== undefined ? Boolean(param1.bLoop) : true;
         var _loc14_:§>8§ = null;
         _loc14_ = new §>8§(_loc3_,null,_loc5_,_loc6_,_loc7_,_loc8_,_loc11_,_loc12_,_loc9_,_loc10_,param2,_loc13_,false,false);
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
               _loc14_.§3!B§(_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_,_loc25_);
            }
         }
         §<M§.push(_loc14_);
      }
      
      public function §,?§(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§+"F§(_loc3_,false);
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
                  this.§+"F§(_loc6_,true);
                  this.§@!b§ = true;
               }
            }
         }
      }
   }
}
