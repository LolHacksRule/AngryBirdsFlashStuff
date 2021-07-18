package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §8"5§ extends §9!0§
   {
       
      
      private var §["9§:Number;
      
      private var §1!U§:Number;
      
      public function §8"5§(param1:§?f§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1,0);
            loop0:
            while(true)
            {
               §§push(§§findproperty(§!"-§));
               §§push(param3);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() - param2);
               }
               §§pop().§!"-§ = §§pop();
               while(true)
               {
                  this.§["9§ = param2;
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§1!U§ = param3;
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §8"5§(§7"?§.clone() as §?f§,this.§["9§,this.§1!U§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc3_)
                  {
                     addr89:
                     if(param1 >= §!"-§)
                     {
                        §7"?§.update(this.§1!U§);
                        addr58:
                        if(_loc2_ && _loc2_)
                        {
                           addr91:
                           §7"?§.update(param1 + this.§["9§);
                           addr97:
                        }
                        §§goto(addr20);
                     }
                  }
               }
               else
               {
                  §7"?§.update(this.§["9§);
                  if(!_loc2_)
                  {
                     if(!(_loc3_ || this))
                     {
                        §§goto(addr97);
                     }
                     addr20:
                     return;
                  }
                  §§goto(addr58);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr89);
      }
      
      public function get §4!#§() : Number
      {
         return this.§["9§;
      }
      
      public function get end() : Number
      {
         return this.§1!U§;
      }
   }
}
