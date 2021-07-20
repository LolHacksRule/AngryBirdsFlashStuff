package §_-xo§
{
   import §_-20§.§_-j5§;
   import §_-6v§.§_-In§;
   import §_-Xz§.§_-PG§;
   import §_-Xz§.§_-Ps§;
   import §_-wT§.§_-K0§;
   import flash.events.Event;
   
   public class §_-E-§ extends §_-PG§ implements §_-Lk§
   {
       
      
      protected var §_-gR§:uint = 0;
      
      protected var §_-St§:Number = 0;
      
      protected var §_-k7§:Boolean = false;
      
      protected var §_-0A§:§_-Ps§;
      
      protected var §_-aw§:§_-K0§;
      
      protected var §_-56§:Number;
      
      protected var §_-BL§:ClassicHandlers;
      
      protected var §_-7A§:Number = 0;
      
      protected var §_-lo§:Boolean = true;
      
      public function §_-E-§(param1:§_-Ps§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               §§goto(addr27);
            }
            §§goto(addr32);
         }
         addr27:
         this.§_-0A§ = param1;
         if(!_loc3_)
         {
            addr32:
            this.§_-St§ = param2;
         }
      }
      
      public function get onStop() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-BL§);
            if(!(_loc2_ && this))
            {
               return §§pop() != null ? this.§_-BL§.onStop : null;
            }
         }
         §§goto(addr42);
      }
      
      public function set onStop(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-En§().onStop = param1;
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§_-aw§);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr44);
                  }
               }
               return false;
            }
            §§goto(addr44);
         }
         addr44:
         return this.§_-aw§.willTrigger(param1);
      }
      
      protected function newInstance() : §_-E-§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-BL§);
            if(_loc1_ || _loc2_)
            {
               return §§pop() != null ? this.§_-BL§.onUpdate : null;
            }
         }
         §§goto(addr42);
      }
      
      public function get §_-Pj§() : §_-Ps§
      {
         return this.§_-0A§;
      }
      
      public function get duration() : Number
      {
         return this.§_-7A§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            if(§§pop() < 0)
            {
               §§push(0);
               if(_loc2_ || this)
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     addr30:
                     §§push(param1);
                     if(_loc2_ || this)
                     {
                        addr38:
                        if(§§pop() > this.§_-7A§)
                        {
                           §§push(this.§_-7A§);
                           if(!(_loc3_ && param1))
                           {
                              addr51:
                              param1 = Number(§§pop());
                              if(_loc2_)
                              {
                                 addr54:
                                 this.§_-St§ = param1;
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.internalUpdate(param1);
                                    addr71:
                                    if((this.§_-gR§ & 4) != 0)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-QW§));
                                          addr94:
                                          §§push(this.§_-BL§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() == null);
                                             if(_loc2_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc3_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr119:
                                                         §§pop();
                                                         §§push(this.§_-BL§);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr129:
                                                            §§push(§§pop().onUpdate);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(null);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   addr144:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr163:
                                                         this.§_-BL§.onUpdate.apply(null,this.§_-BL§.onUpdateParams);
                                                      }
                                                   }
                                                   this.stop();
                                                   return;
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr51);
               }
               §§goto(addr71);
            }
            §§goto(addr30);
         }
         §§goto(addr38);
      }
      
      public function get onPlayParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-BL§);
            if(_loc1_ || _loc1_)
            {
               return §§pop() != null ? this.§_-BL§.onPlayParams : null;
            }
         }
         §§goto(addr42);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-k7§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr25:
                  this.§_-k7§ = false;
                  if((this.§_-gR§ & 2) != 0)
                  {
                     this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-7E§));
                     if(!_loc2_)
                     {
                        addr43:
                        §§push(this.§_-BL§);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() == null);
                           if(_loc1_)
                           {
                              addr63:
                              §§push(!§§pop());
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr70:
                                       §§pop();
                                       §§push(this.§_-BL§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr80:
                                          §§push(§§pop().onStop);
                                          if(!_loc2_)
                                          {
                                             §§push(null);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr95);
                                                }
                                                addr95:
                                                if(§§pop())
                                                {
                                                }
                                                §§goto(addr113);
                                             }
                                             §§pop().apply(§§pop(),this.§_-BL§.onStopParams);
                                             §§goto(addr113);
                                          }
                                       }
                                       §§goto(addr108);
                                    }
                                 }
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr43);
               }
               addr113:
               if(_loc1_)
               {
                  addr108:
                  §§push(this.§_-BL§.onStop);
                  §§push(null);
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr25);
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-En§().onUpdate = param1;
         }
      }
      
      public function firePlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if((this.§_-gR§ & 1) != 0)
            {
               if(!_loc1_)
               {
                  this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-X2§));
                  if(!(_loc1_ && _loc1_))
                  {
                     addr43:
                     §§push(this.§_-BL§);
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop() == null);
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       addr73:
                                       §§push(this.§_-BL§);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop().onPlay);
                                          if(!_loc1_)
                                          {
                                             §§push(null);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_)
                                                {
                                                   §§goto(addr87);
                                                }
                                                addr87:
                                                if(§§pop())
                                                {
                                                }
                                                §§goto(addr105);
                                             }
                                             §§pop().apply(§§pop(),this.§_-BL§.onPlayParams);
                                             §§goto(addr105);
                                          }
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                              }
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr43);
         }
         addr105:
         if(_loc2_)
         {
            addr100:
            §§push(this.§_-BL§.onPlay);
            §§push(null);
         }
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-k7§;
      }
      
      public function get onUpdateParams() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-BL§);
            if(_loc2_)
            {
               return §§pop() != null ? this.§_-BL§.onUpdateParams : null;
            }
         }
         §§goto(addr43);
      }
      
      public function get position() : Number
      {
         return this.§_-St§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-En§().onPlayParams = param1;
         }
      }
      
      public function get onPlay() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-BL§);
            if(!(_loc1_ && this))
            {
               return §§pop() != null ? this.§_-BL§.onPlay : null;
            }
         }
         §§goto(addr48);
      }
      
      public function set §_-Yc§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-lo§ = param1;
         }
      }
      
      protected function §_-E1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§_-aw§);
            if(_loc1_)
            {
               §§push(§_-In§.§_-X2§);
               if(_loc1_)
               {
                  if(§§pop().willTrigger(§§pop()))
                  {
                     this.§_-gR§ |= 1;
                  }
                  else
                  {
                     §§push(this);
                     §§push(this.§_-gR§);
                     §§push(1);
                     if(!(_loc2_ && this))
                     {
                        §§push(~§§pop());
                     }
                     §§pop().§_-gR§ = §§pop() & §§pop();
                  }
                  §§push(this.§_-aw§);
                  if(!_loc2_)
                  {
                     §§push(§_-In§.§_-7E§);
                     if(!_loc2_)
                     {
                        if(§§pop().willTrigger(§§pop()))
                        {
                           if(_loc1_ || this)
                           {
                              this.§_-gR§ |= 2;
                              addr96:
                              §§push(this.§_-aw§);
                              if(_loc1_ || this)
                              {
                                 addr105:
                                 §§push(§_-In§.§_-QW§);
                                 if(!_loc2_)
                                 {
                                    addr109:
                                    if(§§pop().willTrigger(§§pop()))
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§_-gR§ |= 4;
                                       }
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(this.§_-gR§);
                                       §§push(4);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(~§§pop());
                                       }
                                       §§pop().§_-gR§ = §§pop() & §§pop();
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              addr136:
                              addr138:
                              if(§§pop().willTrigger(§§pop()))
                              {
                                 this.§_-gR§ |= 8;
                              }
                              else
                              {
                                 §§push(this);
                                 §§push(this.§_-gR§);
                                 §§push(8);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(~§§pop());
                                 }
                                 §§pop().§_-gR§ = §§pop() & §§pop();
                              }
                              return;
                              §§push(§_-In§.COMPLETE);
                           }
                           §§goto(addr136);
                           §§push(this.§_-aw§);
                        }
                        else
                        {
                           §§push(this);
                           §§push(this.§_-gR§);
                           §§push(2);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(~§§pop());
                           }
                           §§pop().§_-gR§ = §§pop() & §§pop();
                           §§goto(addr96);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr96);
               }
               §§goto(addr109);
            }
            §§goto(addr105);
         }
         §§goto(addr96);
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-En§().onCompleteParams = param1;
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§_-aw§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§_-aw§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return §§pop().dispatchEvent(param1);
         }
         addr52:
         return false;
      }
      
      public function get onComplete() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-BL§);
            if(_loc1_ || _loc1_)
            {
               return §§pop() != null ? this.§_-BL§.onComplete : null;
            }
         }
         §§goto(addr47);
      }
      
      public function §_-hT§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§_-k7§)
            {
               if(!(_loc1_ && this))
               {
                  addr38:
                  this.stop();
                  if(_loc2_ || _loc2_)
                  {
                  }
               }
            }
            else
            {
               this.play();
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Boolean = false;
         §§push(this.§_-St§);
         if(!_loc4_)
         {
            §§push(this.§_-7A§);
            if(_loc3_)
            {
               §§push(§§pop() < §§pop());
               §§push(§§pop() < §§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§pop();
                        §§push(this.§_-7A§);
                        if(_loc3_ || this)
                        {
                           addr46:
                           §§push(§§pop() <= param1);
                           if(_loc3_)
                           {
                              addr49:
                              §§push(§§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    addr58:
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          addr67:
                                          §§push(§§pop() < this.§_-St§);
                                          §§push(§§pop() < this.§_-St§);
                                          if(_loc3_)
                                          {
                                             addr70:
                                             if(§§pop())
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§pop();
                                                   addr80:
                                                   §§push(param1 <= 0);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr89:
                                                      if(§§pop())
                                                      {
                                                         _loc2_ = true;
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr99:
                                                            this.§_-St§ = param1;
                                                            this.internalUpdate(param1);
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.§_-gR§);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(4);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr132:
                                                                        §§push(0);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr138:
                                                                                 §§push(this.§_-aw§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().dispatchEvent(new §_-In§(§_-In§.§_-QW§));
                                                                                    addr147:
                                                                                    §§push(this.§_-BL§);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§push(null);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() != §§pop());
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr183:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§push(this.§_-BL§);
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop().onUpdate);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() != §§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr209:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.§_-BL§);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().onUpdate);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(null);
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              §§push(this.§_-BL§);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().onUpdateParams);
                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop().apply(§§pop(),§§pop());
                                                                                                                                    addr240:
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr249:
                                                                                                                                          if((this.§_-gR§ & 8) != 0)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr254:
                                                                                                                                                this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.COMPLETE));
                                                                                                                                                addr259:
                                                                                                                                                §§push(this.§_-BL§);
                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                {
                                                                                                                                                   addr269:
                                                                                                                                                   §§push(§§pop() != null);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr274:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr282:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(this.§_-BL§);
                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr292:
                                                                                                                                                               §§push(§§pop().onComplete);
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(null);
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr300:
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr318);
                                                                                                                                                                  }
                                                                                                                                                                  addr317:
                                                                                                                                                                  §§pop().apply(§§pop(),this.§_-BL§.onCompleteParams);
                                                                                                                                                                  §§goto(addr314);
                                                                                                                                                               }
                                                                                                                                                               addr313:
                                                                                                                                                               addr314:
                                                                                                                                                               addr318:
                                                                                                                                                               return;
                                                                                                                                                               §§push(null);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr313);
                                                                                                                                                            §§push(§§pop().onComplete);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr300);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr282);
                                                                                                                                                }
                                                                                                                                                §§goto(addr292);
                                                                                                                                             }
                                                                                                                                             §§goto(addr282);
                                                                                                                                             §§push(this.§_-BL§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr259);
                                                                                                                                       }
                                                                                                                                       §§goto(addr282);
                                                                                                                                    }
                                                                                                                                    §§goto(addr318);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr317);
                                                                                                                        }
                                                                                                                        §§goto(addr292);
                                                                                                                     }
                                                                                                                     §§goto(addr282);
                                                                                                                  }
                                                                                                                  §§goto(addr318);
                                                                                                               }
                                                                                                               §§goto(addr240);
                                                                                                            }
                                                                                                            §§goto(addr300);
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                §§goto(addr209);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr138);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr99);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr49);
               }
               §§goto(addr183);
            }
         }
         §§goto(addr46);
      }
      
      public function play() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Number = NaN;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-k7§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  §§push(this.§_-St§);
                  if(_loc3_)
                  {
                     if(§§pop() >= this.§_-7A§)
                     {
                        this.§_-St§ = 0;
                        if(!_loc2_)
                        {
                           addr40:
                           §§push(this.§_-0A§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop().time);
                              if(_loc3_ || _loc1_)
                              {
                                 addr58:
                                 _loc1_ = §§pop();
                                 §§push(this);
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() - this.§_-St§);
                                 }
                                 §§pop().§_-56§ = §§pop();
                                 this.§_-k7§ = true;
                                 §§push(this.§_-0A§);
                              }
                              §§goto(addr58);
                           }
                           §§pop().§_-lE§(this);
                           if(_loc3_)
                           {
                              addr76:
                              if((this.§_-gR§ & 1) != 0)
                              {
                                 this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-X2§));
                              }
                              §§push(this.§_-BL§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() == null);
                                 if(_loc3_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop();
                                             if(!_loc2_)
                                             {
                                                §§push(this.§_-BL§);
                                                if(!(_loc2_ && this))
                                                {
                                                   §§push(§§pop().onPlay);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(null);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                    }
                                    addr158:
                                    §§goto(addr157);
                                 }
                                 addr157:
                                 if(!§§pop())
                                 {
                                    addr170:
                                    this.§_-BL§.onPlay.apply(null,this.§_-BL§.onPlayParams);
                                 }
                                 this.tick(_loc1_);
                                 return;
                              }
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr40);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr76);
      }
      
      public function set onStopParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-En§().onStopParams = param1;
         }
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            if(§§pop() < 0)
            {
               §§push(Number(0));
               if(_loc3_ || _loc2_)
               {
                  param1 = §§pop();
               }
               addr52:
               param1 = §§pop();
               if(_loc3_ || param1)
               {
                  §§goto(addr67);
               }
               §§goto(addr72);
            }
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > this.§_-7A§)
               {
                  §§push(this.§_-7A§);
                  if(_loc3_)
                  {
                     addr51:
                     §§goto(addr52);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr52);
               }
               addr67:
               this.§_-St§ = param1;
               if(_loc3_)
               {
                  addr72:
                  this.play();
               }
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr52);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§_-aw§);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_)
                  {
                     addr32:
                     this.§_-aw§.removeEventListener(param1,param2,param3);
                     if(_loc4_ || param2)
                     {
                        addr50:
                        this.§_-E1§();
                     }
                  }
                  §§goto(addr50);
               }
               return;
            }
            §§goto(addr32);
         }
         §§goto(addr50);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            §§push(this.§_-aw§);
            if(_loc7_)
            {
               if(§§pop() == null)
               {
                  if(!_loc6_)
                  {
                     this.§_-aw§ = new §_-K0§(this);
                     if(_loc7_)
                     {
                        this.§_-aw§.addEventListener(param1,param2,param3,param4,param5);
                        addr43:
                        addr45:
                        if(_loc6_)
                        {
                        }
                        §§goto(addr62);
                     }
                     this.§_-E1§();
                     addr62:
                     return;
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr45);
         }
         §§goto(addr43);
      }
      
      public function fireStop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if((this.§_-gR§ & 2) != 0)
            {
               if(_loc2_)
               {
                  this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-7E§));
                  if(_loc2_)
                  {
                     addr38:
                     §§push(this.§_-BL§);
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop() == null);
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                           if(!(_loc1_ && this))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§pop();
                                    if(!_loc1_)
                                    {
                                       addr78:
                                       §§push(this.§_-BL§);
                                       if(!_loc1_)
                                       {
                                          addr82:
                                          §§push(§§pop().onStop);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(null);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr102);
                                                }
                                                addr102:
                                                §§goto(addr101);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 addr101:
                                 if(!§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       addr116:
                                       this.§_-BL§.onStop.apply(null,this.§_-BL§.onStopParams);
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr116);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr38);
      }
      
      public function get §_-Yc§() : Boolean
      {
         return this.§_-lo§;
      }
      
      public function clone() : §_-j5§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-E-§ = this.newInstance();
         if(!(_loc2_ && _loc2_))
         {
            if(_loc1_ != null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-BL§);
            if(_loc1_ || _loc2_)
            {
               return §§pop() != null ? this.§_-BL§.onCompleteParams : null;
            }
         }
         §§goto(addr42);
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-En§().onUpdateParams = param1;
         }
      }
      
      public function get onStopParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-BL§);
            if(_loc1_ || _loc1_)
            {
               return §§pop() != null ? this.§_-BL§.onStopParams : null;
            }
         }
         §§goto(addr47);
      }
      
      protected function §_-En§() : ClassicHandlers
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            return this.§_-BL§ || (this.§_-BL§ = new ClassicHandlers());
         }
         §§goto(addr36);
      }
      
      public function set onPlay(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-En§().onPlay = param1;
         }
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-En§().onComplete = param1;
         }
      }
      
      override public function tick(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§_-k7§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(true);
                  }
                  else
                  {
                     addr34:
                     §§push(param1);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - this.§_-56§);
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     this.§_-St§ = _loc2_;
                     this.internalUpdate(_loc2_);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§_-gR§);
                        if(_loc3_)
                        {
                           §§push(4);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() & §§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(0);
                                 if(_loc3_ || param1)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§_-aw§);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§pop().dispatchEvent(new §_-In§(§_-In§.§_-QW§));
                                          if(_loc3_ || param1)
                                          {
                                             addr112:
                                             §§push(this.§_-BL§);
                                             §§push(null);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() != §§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(this.§_-BL§.onUpdate);
                                                         if(_loc3_)
                                                         {
                                                            §§push(null);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr150:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(this.§_-BL§.onUpdate);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(null);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(this.§_-BL§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().onUpdateParams);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().apply(§§pop(),§§pop());
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr174:
                                                                                       if(this.§_-k7§)
                                                                                       {
                                                                                          addr177:
                                                                                          if(_loc2_ >= this.§_-7A§)
                                                                                          {
                                                                                             this.§_-St§ = this.§_-7A§;
                                                                                             if(this.§_-lo§)
                                                                                             {
                                                                                                this.§_-k7§ = false;
                                                                                                §§push(this.§_-gR§);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§push(8);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         addr223:
                                                                                                         §§push(0);
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            addr231:
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               §§push(this.§_-aw§);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§pop().dispatchEvent(new §_-In§(§_-In§.COMPLETE));
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     addr253:
                                                                                                                     §§push(this.§_-BL§);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(null);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() != §§pop());
                                                                                                                           §§push(§§pop() != §§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 §§push(this.§_-BL§.onComplete);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr272:
                                                                                                                                    §§push(null);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                       {
                                                                                                                                          addr284:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-BL§.onComplete);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr292:
                                                                                                                                                   §§push(null);
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-BL§);
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().onCompleteParams);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr307:
                                                                                                                                                            §§pop().apply(§§pop(),§§pop());
                                                                                                                                                            addr308:
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            addr332:
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               §§push(this.§_-BL§.onComplete);
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr339:
                                                                                                                                                                  §§push(null);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr342);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr353);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr348);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr356);
                                                                                                                                             }
                                                                                                                                             §§goto(addr389);
                                                                                                                                          }
                                                                                                                                          §§goto(addr308);
                                                                                                                                       }
                                                                                                                                       §§goto(addr345);
                                                                                                                                    }
                                                                                                                                    §§goto(addr342);
                                                                                                                                 }
                                                                                                                                 §§goto(addr292);
                                                                                                                              }
                                                                                                                              §§goto(addr284);
                                                                                                                           }
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr329:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr332);
                                                                                                                     }
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                                  §§goto(addr389);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr321:
                                                                                                                  §§pop().dispatchEvent(new §_-In§(§_-In§.COMPLETE));
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            §§goto(addr253);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr318:
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               §§goto(addr321);
                                                                                                               §§push(this.§_-aw§);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr329);
                                                                                                         §§push(this.§_-BL§);
                                                                                                         §§push(null);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr317:
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr316:
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                   }
                                                                                                   §§goto(addr317);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr315:
                                                                                                   §§goto(addr316);
                                                                                                   §§push(8);
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr315);
                                                                                                §§push(this.§_-gR§);
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           addr342:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr345:
                                                                              §§push(!§§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr348:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr356:
                                                                                    this.§_-BL§.onComplete.apply(null,this.§_-BL§.onCompleteParams);
                                                                                    addr353:
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr359:
                                                                                       §§push(this);
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() - this.§_-7A§);
                                                                                       }
                                                                                       §§pop().§_-St§ = §§pop();
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() - this.§_-St§);
                                                                                       }
                                                                                       §§pop().§_-56§ = §§pop();
                                                                                       this.tick(param1);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr387:
                                                                                          return false;
                                                                                       }
                                                                                       addr389:
                                                                                       §§push(true);
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr329);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr316);
                        }
                        §§goto(addr315);
                     }
                     §§goto(addr177);
                  }
               }
               §§goto(addr34);
            }
            return §§pop();
         }
         §§goto(addr34);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-aw§);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§_-aw§);
                  }
                  else
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return §§pop().hasEventListener(param1);
         }
         addr57:
         return false;
      }
      
      protected function copyFrom(param1:§_-E-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-0A§ = param1.§_-0A§;
            this.§_-7A§ = param1.§_-7A§;
            this.§_-lo§ = param1.§_-lo§;
            §§push(param1.§_-BL§);
            if(!(_loc2_ && param1))
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     this.§_-BL§ = new ClassicHandlers();
                  }
                  addr54:
                  this.§_-BL§.copyFrom(param1.§_-BL§);
               }
               §§push(param1.§_-aw§);
               if(!_loc2_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§_-aw§ = new §_-K0§(this);
                        addr84:
                        this.§_-aw§.copyFrom(param1.§_-aw§);
                        §§goto(addr75);
                     }
                     addr75:
                     if(_loc3_)
                     {
                        addr89:
                        this.§_-gR§ = param1.§_-gR§;
                     }
                     return;
                  }
                  §§goto(addr89);
               }
               §§goto(addr84);
            }
            §§goto(addr54);
         }
         §§goto(addr84);
      }
      
      protected function internalUpdate(param1:Number) : void
      {
      }
   }
}

class ClassicHandlers
{
    
   
   public var onStop:Function;
   
   public var onStopParams:Array;
   
   public var onUpdate:Function;
   
   public var onUpdateParams:Array;
   
   public var onPlay:Function;
   
   public var onComplete:Function;
   
   public var onPlayParams:Array;
   
   public var onCompleteParams:Array;
   
   function ClassicHandlers()
   {
      super();
   }
   
   public function copyFrom(param1:ClassicHandlers) : void
   {
      this.onPlay = param1.onPlay;
      this.onPlayParams = param1.onPlayParams;
      this.onStop = param1.onStop;
      this.onStopParams = param1.onStopParams;
      this.onUpdate = param1.onUpdate;
      this.onUpdateParams = param1.onUpdateParams;
      this.onComplete = param1.onComplete;
      this.onCompleteParams = param1.onCompleteParams;
   }
}
