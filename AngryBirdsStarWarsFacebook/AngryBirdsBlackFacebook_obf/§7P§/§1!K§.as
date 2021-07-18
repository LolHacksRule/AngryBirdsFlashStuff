package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §1!K§ extends §`#G§
   {
       
      
      private var §&!6§:Boolean = false;
      
      public function §1!K§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §0!v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&!6§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(!isMoving());
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc3_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§&!6§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              addr82:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        health = 0;
                     }
                     break;
                  }
                  return;
                  addr54:
               }
               §§goto(addr82);
            }
         }
      }
   }
}
