package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §'"Y§ extends §`#G§
   {
       
      
      protected var §>!p§:Number;
      
      protected var §-#[§:Number;
      
      protected var §;"F§:Number;
      
      protected var §75§:Number;
      
      public function §'"Y§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param3))
         {
            super(param1,param2,param3,param4,param5,param10);
            while(true)
            {
               this.§>!p§ = param6;
               while(_loc12_ || param1)
               {
                  this.§;"F§ = param8;
                  loop3:
                  while(_loc12_ || param3)
                  {
                     this.§75§ = param9;
                     if(!(_loc11_ && param3))
                     {
                        addr40:
                        if(_loc11_)
                        {
                           while(true)
                           {
                              this.§-#[§ = param7;
                              break loop3;
                              §§goto(addr40);
                           }
                           addr81:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function explodeBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  param1.§6#4§(§3!t§().GetPosition().x,§3!t§().GetPosition().y,this.§>!p§,this.§-#[§,this.§;"F§,this.§75§);
                  addr32:
               }
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
