package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §3!4§ extends §"U§
   {
       
      
      private var §+]§:Number;
      
      private var §>!d§:Number;
      
      public function §3!4§(param1:§?H§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,0);
         }
         loop0:
         while(true)
         {
            §§push(§§findproperty(§[m§));
            §§push(param3);
            if(!_loc5_)
            {
               §§push(§§pop() - param2);
            }
            §§pop().§[m§ = §§pop();
            loop1:
            while(true)
            {
               this.§+]§ = param2;
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §3!4§(§>d§.clone() as §?H§,this.§+]§,this.§>!d§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() <= 0)
               {
                  §>d§.update(this.§+]§);
                  if(_loc2_ || this)
                  {
                     if(!_loc3_)
                     {
                        addr49:
                     }
                     else
                     {
                        addr91:
                     }
                     return;
                  }
                  loop0:
                  for(; !_loc2_; §>d§.update(this.§>!d§))
                  {
                     while(true)
                     {
                        §§push(param1);
                        addr66:
                        while(true)
                        {
                           if(§§pop() >= §[m§)
                           {
                              continue loop0;
                           }
                           if(!(_loc3_ && param1))
                           {
                              §>d§.update(param1 + this.§+]§);
                           }
                           §§goto(addr91);
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr65);
            }
            §§goto(addr66);
         }
         §§goto(addr49);
      }
      
      public function get §#c§() : Number
      {
         return this.§+]§;
      }
      
      public function get end() : Number
      {
         return this.§>!d§;
      }
   }
}
