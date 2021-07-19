package §_-xo§
{
   import §_-5y§.§_-Yj§;
   import §_-V7§.§_-S1§;
   import §_-Xz§.§_-Ps§;
   
   public class §_-bw§ extends §_-E-§ implements §_-Xk§
   {
       
      
      protected var §_-yQ§:§_-Yj§;
      
      protected var §_-A-§:§_-S1§;
      
      public function §_-bw§(param1:§_-Ps§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1,0);
         }
      }
      
      public function set time(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-7A§ = param1;
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() < §_-7A§)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(this.§_-yQ§.§_-3u§(param1,0,1,§_-7A§));
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ || this))
                                 {
                                    addr90:
                                    _loc2_ = §§pop();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr105:
                                       this.§_-A-§.update(_loc2_);
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                              }
                              §§goto(addr109);
                           }
                        }
                        else
                        {
                           §§goto(addr90);
                           §§push(Number(1));
                        }
                     }
                     §§goto(addr90);
                  }
                  addr109:
                  return;
               }
               §§goto(addr105);
            }
            §§goto(addr90);
         }
         §§goto(addr105);
      }
      
      public function get §_-tz§() : §_-S1§
      {
         return this.§_-A-§;
      }
      
      public function get §_-5E§() : §_-Yj§
      {
         return this.§_-yQ§;
      }
      
      override protected function copyFrom(param1:§_-E-§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-bw§ = param1 as §_-bw§;
         if(!(_loc4_ && param1))
         {
            this.§_-yQ§ = _loc2_.§_-yQ§;
            if(_loc3_)
            {
               this.§_-A-§ = _loc2_.§_-A-§.clone();
            }
         }
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-bw§(§_-0A§);
      }
      
      public function set §_-5E§(param1:§_-Yj§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-yQ§ = param1;
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-A-§);
            if(!(_loc1_ && _loc2_))
            {
               return §§pop() != null ? this.§_-A-§.target : null;
            }
         }
         §§goto(addr48);
      }
      
      public function set §_-tz§(param1:§_-S1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-A-§ = param1;
         }
      }
      
      public function get time() : Number
      {
         return §_-7A§;
      }
   }
}
