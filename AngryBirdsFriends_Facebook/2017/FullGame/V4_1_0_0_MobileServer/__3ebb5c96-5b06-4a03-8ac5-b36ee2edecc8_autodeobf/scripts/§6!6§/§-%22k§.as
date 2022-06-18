package §6!6§
{
   public class §-"k§ extends §6!r§
   {
       
      
      protected var §-!n§:String;
      
      protected var §#3§:String;
      
      protected var §>",§:String;
      
      protected var §=!q§:String;
      
      protected var §7#h§:Number = 1.0;
      
      protected var § "A§:Number = 1.0;
      
      protected var §3"j§:Array;
      
      protected var §,u§:Boolean;
      
      public function §-"k§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         super(param1,param2,param3,param4,-1,param5,null,param10);
         this.§-!n§ = param6;
         this.§#3§ = param7;
         this.§>",§ = param8;
         this.§=!q§ = param9;
         this.§ "A§ = param11;
         this.§7#h§ = param12;
         if(!param13)
         {
            this.§3"j§ = [];
         }
         else
         {
            this.§3"j§ = param13.concat();
         }
      }
      
      public function get §&9§() : String
      {
         return this.§-!n§;
      }
      
      public function get §#e§() : String
      {
         return this.§#3§;
      }
      
      public function get §-$=§() : String
      {
         return this.§>",§;
      }
      
      public function get §7#5§() : String
      {
         return this.§=!q§;
      }
      
      public function get §@"o§() : Number
      {
         return this.§7#h§;
      }
      
      public function get §]$>§() : Array
      {
         return this.§3"j§.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.§,u§)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function §9!,§(param1:Object, param2:Boolean = false) : void
      {
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Boolean = false;
         var _loc29_:Array = null;
         var _loc3_:String = param1.sprite;
         var _loc5_:Number = (!!param1.scale ? param1.scale : 1) * this.§ "A§;
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
         var _loc16_:Number = param1.moveStartOffsetX !== undefined ? Number(param1.moveStartOffsetX) : Number(0);
         var _loc17_:Number = param1.moveEndOffsetX !== undefined ? Number(param1.moveEndOffsetX) : Number(0);
         var _loc18_:§<n§ = null;
         _loc18_ = new §<n§(_loc3_,null,_loc5_,_loc6_,_loc7_,_loc8_,_loc11_,_loc12_,_loc9_,_loc10_,_loc14_,_loc15_,param2,_loc13_,false,_loc16_,_loc17_,false);
         var _loc19_:Object;
         if(_loc19_ = param1.elements)
         {
            if((_loc20_ = _loc19_.amount) > 0)
            {
               _loc21_ = !!_loc19_.x ? Number(_loc19_.x) : Number(0);
               _loc22_ = !!_loc19_.y ? Number(_loc19_.y) : Number(0);
               _loc23_ = !!_loc19_.w ? Number(_loc19_.w) : Number(1);
               _loc24_ = !!_loc19_.h ? Number(_loc19_.h) : Number(1);
               _loc25_ = !!_loc19_.velX ? Number(_loc19_.velX) : Number(0);
               _loc26_ = !!_loc19_.velY ? Number(_loc19_.velY) : Number(0);
               _loc27_ = !!_loc19_.variation ? Number(_loc19_.variation) : Number(0);
               _loc28_ = _loc19_.randomRotation;
               _loc29_ = _loc19_.sprites;
               _loc18_.§-d§(_loc20_,_loc21_,_loc22_,_loc23_,_loc24_,_loc25_,_loc26_,_loc27_,_loc28_,_loc29_);
            }
         }
         § #r§.push(_loc18_);
      }
      
      public function §^#X§(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§9!,§(_loc3_,false);
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
                  this.§9!,§(_loc6_,true);
                  this.§,u§ = true;
               }
            }
         }
      }
   }
}
