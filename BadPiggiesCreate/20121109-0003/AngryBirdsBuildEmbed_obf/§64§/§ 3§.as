package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class § 3§ extends §3!u§
   {
       
      
      private var §0y§:Number;
      
      private var §"o§:uint;
      
      public function § 3§(param1:§#>§, param2:uint)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,0);
            if(_loc4_ || param1)
            {
               this.§0y§ = param1.duration;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr61);
               }
            }
            §§goto(addr66);
         }
         addr61:
         this.§"o§ = param2;
         if(!_loc3_)
         {
            addr66:
            §§push(§§findproperty(§1J§));
            §§push(this.§0y§);
            if(_loc4_)
            {
               §§push(§§pop() * param2);
            }
            §§pop().§1J§ = §§pop();
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() >= 0)
               {
                  if(_loc2_ || param1)
                  {
                     addr30:
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop() < §1J§)
                           {
                              if(!_loc3_)
                              {
                                 §§push(this.§0y§);
                                 if(_loc2_ || param1)
                                 {
                                    addr70:
                                    §§push(§§pop() * int(param1 / this.§0y§) - (!!_loc2_ ? §§pop() : §§pop()));
                                    if(!_loc3_)
                                    {
                                       §§goto(addr90);
                                    }
                                    addr90:
                                    param1 = §§pop();
                                    §§goto(addr89);
                                 }
                                 §§goto(addr79);
                              }
                              addr89:
                              if(_loc2_)
                              {
                                 addr93:
                                 §]d§.update(param1);
                              }
                              return;
                           }
                           §§push(§1J§ - this.§0y§);
                           §§goto(addr85);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr90);
         }
         §§goto(addr30);
      }
      
      public function get §-!n§() : uint
      {
         return this.§"o§;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new § 3§(§]d§.clone() as §#>§,this.§-!n§);
      }
   }
}
