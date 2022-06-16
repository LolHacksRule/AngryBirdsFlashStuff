package §6$8§
{
   public class §%"#§ extends §]§
   {
       
      
      public function §%"#§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §-#U§(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         for each(_loc3_ in param1)
         {
            this.§[#b§(_loc3_,false);
         }
         for each(_loc4_ in param2)
         {
            this.§[#b§(_loc4_,true);
         }
      }
      
      private function §[#b§(param1:Object, param2:Boolean = false) : void
      {
         var _loc3_:String = param1.sprite;
         var _loc5_:Number = param1.parallax;
         var _loc6_:Number = !!param1.scale ? Number(param1.scale) : Number(1);
         var _loc7_:Number = !!param1.xOffset ? Number(param1.xOffset) : Number(0);
         var _loc8_:Number = !!param1.yOffset ? Number(param1.yOffset) : Number(0);
         var _loc9_:Number = param1.velX !== undefined ? Number(param1.velX) : Number(0);
         var _loc10_:Boolean = param1.looping !== undefined ? Boolean(param1.looping) : true;
         var _loc11_:Boolean = param1.optional !== undefined ? Boolean(param1.optional) : false;
         var _loc12_:Number = param1.moveStartOffsetX !== undefined ? Number(param1.moveStartOffsetX) : Number(0);
         var _loc13_:Number = param1.moveEndOffsetX !== undefined ? Number(param1.moveEndOffsetX) : Number(0);
         var _loc14_:Boolean = param1.highQuality !== undefined ? Boolean(param1.highQuality) : false;
         var _loc15_:§]!7§ = new §]!7§(_loc3_,null,_loc6_,_loc5_,_loc7_,_loc8_,_loc9_,param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         §%"J§.push(_loc15_);
      }
   }
}
