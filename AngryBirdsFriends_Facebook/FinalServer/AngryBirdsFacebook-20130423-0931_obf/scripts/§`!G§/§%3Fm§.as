package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§1!"§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §?m§ extends §;i§
   {
       
      
      private var § 8§:§1!"§;
      
      public function §?m§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         §§push(-param2.width);
         if(_loc15_ || param1)
         {
            §§push(§§pop() / param11);
            if(!_loc14_)
            {
               §§push(§§pop() / 2);
               if(_loc15_ || param3)
               {
               }
               addr66:
               var _loc12_:* = §§pop();
               §§push(-param2.height);
               if(!_loc14_)
               {
                  §§push(§§pop() / param11);
                  if(_loc15_ || this)
                  {
                     addr81:
                     §§push(§§pop() / 2);
                     if(!(_loc14_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc13_:* = §§pop();
                  if(!_loc14_)
                  {
                     this.§ 8§ = new §1!"§("BIRD_CHRISTMAS_FUSE",§?!T§,§?l§.§'h§,_loc12_,_loc13_,50,true);
                     do
                     {
                        this.§ 8§.§%"-§(true);
                     }
                     while(_loc14_);
                     
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr66);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.update(param1);
         }
         do
         {
            this.§ 8§.update(param1);
         }
         while(_loc3_);
         
      }
      
      override public function addTrail() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.addTrail();
         }
         §§push(x * §'!S§.§2"<§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y * §'!S§.§2"<§);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §"x§(_loc1_,_loc2_,0,3,10);
         }
      }
   }
}
