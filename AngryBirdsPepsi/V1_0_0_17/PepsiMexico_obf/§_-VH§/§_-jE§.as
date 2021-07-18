package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-jE§ extends §_-Ar§
   {
       
      
      private var §_-XR§:Number;
      
      private var §_-lg§:Number;
      
      public function §_-jE§(param1:§_-Lk§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param1,0);
            if(!(_loc5_ && param3))
            {
               §§push(§§findproperty(§_-7A§));
               §§push(param3);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() - param2);
               }
               §§pop().§_-7A§ = §§pop();
               if(_loc5_)
               {
               }
               §§goto(addr72);
            }
            this.§_-XR§ = param2;
            if(_loc4_ || param3)
            {
               this.§_-lg§ = param3;
            }
         }
         addr72:
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-jE§(§_-Zc§.clone() as §_-Lk§,this.§_-XR§,this.§_-lg§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     addr40:
                     if(param1 < §_-7A§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §_-Zc§.update(param1 + this.§_-XR§);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr76);
                        }
                        addr71:
                     }
                     else
                     {
                        §_-Zc§.update(this.§_-lg§);
                        if(_loc2_)
                        {
                           §§goto(addr71);
                        }
                     }
                  }
               }
               else
               {
                  §_-Zc§.update(this.§_-XR§);
               }
               addr76:
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr71);
      }
      
      public function get §_-oF§() : Number
      {
         return this.§_-XR§;
      }
      
      public function get end() : Number
      {
         return this.§_-lg§;
      }
   }
}
