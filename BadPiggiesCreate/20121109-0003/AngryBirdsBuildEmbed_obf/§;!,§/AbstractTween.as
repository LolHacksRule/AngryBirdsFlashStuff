package §;!,§
{
   import §4!7§.§%!m§;
   import §4!7§.§,u§;
   import §?!4§.§=Y§;
   import §]!q§.§=;§;
   import §]s§.ClonableEventDispatcher;
   import flash.events.Event;
   
   public class AbstractTween extends §,u§ implements §#>§
   {
       
      
      protected var §8^§:uint = 0;
      
      protected var §]!N§:Number = 0;
      
      protected var §5N§:Boolean = false;
      
      protected var §5!§:§%!m§;
      
      protected var §'!$§:ClonableEventDispatcher;
      
      protected var §5_§:Number;
      
      protected var §+!v§:ClassicHandlers;
      
      protected var §1J§:Number = 0;
      
      protected var §72§:Boolean = true;
      
      public function AbstractTween(param1:§%!m§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this.§5!§ = param1;
               if(_loc4_ || param2)
               {
                  addr43:
                  this.§]!N§ = param2;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get onStop() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§+!v§);
            if(_loc1_ || this)
            {
               return §§pop() != null ? this.§+!v§.onStop : null;
            }
         }
         §§goto(addr46);
      }
      
      public function set onStop(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`z§().onStop = param1;
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§'!$§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     §§push(this.§'!$§);
                  }
                  else
                  {
                     §§goto(addr47);
                  }
               }
               §§goto(addr47);
            }
            return §§pop().willTrigger(param1);
         }
         addr47:
         return false;
      }
      
      protected function newInstance() : AbstractTween
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+!v§);
            if(_loc2_ || _loc2_)
            {
               return §§pop() != null ? this.§+!v§.onUpdate : null;
            }
         }
         §§goto(addr47);
      }
      
      public function get §-!4§() : §%!m§
      {
         return this.§5!§;
      }
      
      public function get duration() : Number
      {
         return this.§1J§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            if(§§pop() < 0)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     addr33:
                     §§push(param1);
                     if(!_loc3_)
                     {
                        if(§§pop() > this.§1J§)
                        {
                           §§push(this.§1J§);
                           if(_loc2_)
                           {
                              addr44:
                              param1 = Number(§§pop());
                           }
                           §§goto(addr44);
                        }
                        this.§]!N§ = param1;
                        if(!(_loc3_ && _loc3_))
                        {
                           this.internalUpdate(param1);
                           addr62:
                           if((this.§8^§ & 4) != 0)
                           {
                              if(!_loc3_)
                              {
                                 this.§'!$§.dispatchEvent(new §=;§(§=;§.§]v§));
                                 addr83:
                                 §§push(this.§+!v§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() == null);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(!§§pop());
                                       if(_loc2_)
                                       {
                                          addr99:
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§pop();
                                                §§push(this.§+!v§);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(§§pop().onUpdate);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(null);
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§goto(addr153);
                                                         }
                                                         addr153:
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr156);
                                             }
                                             addr152:
                                             if(!§§pop())
                                             {
                                                addr158:
                                                this.§+!v§.onUpdate.apply(null,this.§+!v§.onUpdateParams);
                                                addr157:
                                                addr156:
                                                if(!_loc2_)
                                                {
                                                }
                                                §§goto(addr166);
                                             }
                                             this.stop();
                                             addr166:
                                             return;
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr158);
                                 addr66:
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr66);
                     }
                  }
                  §§goto(addr44);
               }
               §§goto(addr62);
            }
            §§goto(addr33);
         }
         §§goto(addr44);
      }
      
      public function get onPlayParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§+!v§);
            if(!_loc2_)
            {
               return §§pop() != null ? this.§+!v§.onPlayParams : null;
            }
         }
         §§goto(addr41);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§5N§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     this.§5N§ = false;
                     if(_loc2_ || _loc1_)
                     {
                        if((this.§8^§ & 2) != 0)
                        {
                           this.§'!$§.dispatchEvent(new §=;§(§=;§.§ !8§));
                           addr57:
                        }
                     }
                     §§goto(addr57);
                  }
                  §§push(this.§+!v§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() == null);
                     if(_loc2_ || _loc1_)
                     {
                        addr92:
                        §§push(!§§pop());
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr104);
                     }
                     addr100:
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr104:
                           §§pop();
                           §§push(this.§+!v§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop().onStop);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(null);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc1_ && this)
                                    {
                                    }
                                    §§goto(addr144);
                                 }
                                 §§pop().apply(§§pop(),this.§+!v§.onStopParams);
                                 §§goto(addr144);
                              }
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr148);
               }
               addr144:
               if(!§§pop())
               {
                  addr148:
                  §§push(this.§+!v§.onStop);
                  §§push(null);
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr57);
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`z§().onUpdate = param1;
         }
      }
      
      public function firePlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if((this.§8^§ & 1) != 0)
            {
               if(_loc2_)
               {
                  this.§'!$§.dispatchEvent(new §=;§(§=;§.PLAY));
                  if(!_loc1_)
                  {
                     addr36:
                     §§push(this.§+!v§);
                     if(_loc2_)
                     {
                        §§push(§§pop() == null);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(!§§pop());
                           if(!(_loc1_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       addr74:
                                       §§push(this.§+!v§);
                                       if(_loc2_)
                                       {
                                          addr78:
                                          §§push(§§pop().onPlay);
                                          if(_loc2_)
                                          {
                                             §§push(null);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_)
                                                {
                                                   §§goto(addr103);
                                                }
                                                addr103:
                                                if(§§pop())
                                                {
                                                }
                                                §§goto(addr119);
                                             }
                                             §§pop().apply(§§pop(),this.§+!v§.onPlayParams);
                                             §§goto(addr119);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr36);
         }
         addr119:
         if(!(_loc1_ && _loc1_))
         {
            addr114:
            §§push(this.§+!v§.onPlay);
            §§push(null);
         }
      }
      
      public function get §6e§() : Boolean
      {
         return this.§5N§;
      }
      
      public function get onUpdateParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+!v§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§+!v§.onUpdateParams : null;
            }
         }
         §§goto(addr26);
      }
      
      public function get position() : Number
      {
         return this.§]!N§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`z§().onPlayParams = param1;
         }
      }
      
      public function get onPlay() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+!v§);
            if(!(_loc1_ && this))
            {
               return §§pop() != null ? this.§+!v§.onPlay : null;
            }
         }
         §§goto(addr42);
      }
      
      public function set §@!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§72§ = param1;
         }
      }
      
      protected function §3!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'!$§);
         if(!_loc2_)
         {
            §§push(§=;§.PLAY);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop().willTrigger(§§pop()))
               {
                  this.§8^§ |= 1;
               }
               else
               {
                  §§push(this);
                  §§push(this.§8^§);
                  §§push(1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(~§§pop());
                  }
                  §§pop().§8^§ = §§pop() & §§pop();
               }
               §§push(this.§'!$§);
               if(_loc1_)
               {
                  §§push(§=;§.§ !8§);
                  if(!_loc2_)
                  {
                     if(§§pop().willTrigger(§§pop()))
                     {
                        this.§8^§ |= 2;
                        if(_loc1_)
                        {
                           addr90:
                           §§push(this.§'!$§);
                           if(!_loc2_)
                           {
                              addr94:
                              §§push(§=;§.§]v§);
                              if(_loc1_)
                              {
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr146);
                     }
                     else
                     {
                        §§push(this);
                        §§push(this.§8^§);
                        §§push(2);
                        if(_loc1_)
                        {
                           §§push(~§§pop());
                        }
                        §§pop().§8^§ = §§pop() & §§pop();
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr98);
               }
               §§goto(addr140);
            }
            addr98:
            if(§§pop().willTrigger(§§pop()))
            {
               if(!(_loc2_ && this))
               {
                  this.§8^§ |= 4;
               }
               addr140:
               if(this.§'!$§.willTrigger(§=;§.COMPLETE))
               {
                  addr146:
                  this.§8^§ |= 8;
               }
               else
               {
                  §§push(this);
                  §§push(this.§8^§);
                  §§push(8);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(~§§pop());
                  }
                  §§pop().§8^§ = §§pop() & §§pop();
               }
            }
            else
            {
               §§push(this);
               §§push(this.§8^§);
               §§push(4);
               if(_loc1_)
               {
                  §§push(~§§pop());
               }
               §§pop().§8^§ = §§pop() & §§pop();
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr140);
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`z§().onCompleteParams = param1;
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§'!$§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || param1)
                  {
                     §§push(this.§'!$§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().dispatchEvent(param1);
         }
         addr51:
         return false;
      }
      
      public function get onComplete() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!v§);
            if(_loc2_)
            {
               return §§pop() != null ? this.§+!v§.onComplete : null;
            }
         }
         §§goto(addr27);
      }
      
      public function §&!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§5N§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.stop();
                  if(_loc1_)
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
         §§goto(addr24);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            §§push(this.§]!N§);
            if(!_loc3_)
            {
               §§push(this.§1J§);
               if(!_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop();
                           §§push(this.§1J§);
                           if(_loc4_ || _loc2_)
                           {
                              addr57:
                              §§push(§§pop() <= param1);
                              if(!_loc3_)
                              {
                                 addr60:
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    addr63:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(0);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() < this.§]!N§);
                                          §§push(§§pop() < this.§]!N§);
                                          if(!_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                addr79:
                                                if(param1 <= 0)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(true);
                                                      if(_loc4_)
                                                      {
                                                         addr85:
                                                         _loc2_ = §§pop();
                                                         addr86:
                                                         this.§]!N§ = param1;
                                                         if(_loc4_)
                                                         {
                                                            this.internalUpdate(param1);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§8^§);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(4);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(this.§'!$§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§pop().dispatchEvent(new §=;§(§=;§.§]v§));
                                                                                    addr131:
                                                                                    §§push(this.§+!v§);
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(null);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr162:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         addr170:
                                                                                                         §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§+!v§);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr182:
                                                                                                               §§push(§§pop().onUpdate);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() != §§pop());
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr202:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                           {
                                                                                                                              addr210:
                                                                                                                              §§push(this.§+!v§);
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().onUpdate);
                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(null);
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+!v§);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().onUpdateParams);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§pop().apply(§§pop(),§§pop());
                                                                                                                                             addr243:
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr247:
                                                                                                                                                   if((this.§8^§ & 8) != 0)
                                                                                                                                                   {
                                                                                                                                                      addr255:
                                                                                                                                                      this.§'!$§.dispatchEvent(new §=;§(§=;§.COMPLETE));
                                                                                                                                                      addr253:
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr267:
                                                                                                                                                         §§push(this.§+!v§);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr274:
                                                                                                                                                            §§push(§§pop() != null);
                                                                                                                                                            if(§§pop() != null)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr278:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr328:
                                                                                                                                                                     §§push(this.§+!v§);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr290:
                                                                                                                                                                        §§push(§§pop().onComplete);
                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr308:
                                                                                                                                                                           §§push(null);
                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr325);
                                                                                                                                                                           }
                                                                                                                                                                           addr333:
                                                                                                                                                                           §§pop().apply(§§pop(),this.§+!v§.onCompleteParams);
                                                                                                                                                                           §§goto(addr330);
                                                                                                                                                                        }
                                                                                                                                                                        addr329:
                                                                                                                                                                        addr330:
                                                                                                                                                                        addr325:
                                                                                                                                                                        addr324:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                        §§push(null);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr329);
                                                                                                                                                                     §§push(§§pop().onComplete);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr325);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr328);
                                                                                                                                                      §§push(this.§+!v§);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr267);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr325);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr333);
                                                                                                                                 }
                                                                                                                                 §§goto(addr329);
                                                                                                                              }
                                                                                                                              §§goto(addr328);
                                                                                                                           }
                                                                                                                           §§goto(addr247);
                                                                                                                        }
                                                                                                                        §§goto(addr243);
                                                                                                                     }
                                                                                                                     §§goto(addr274);
                                                                                                                  }
                                                                                                                  §§goto(addr333);
                                                                                                               }
                                                                                                               §§goto(addr308);
                                                                                                            }
                                                                                                            §§goto(addr290);
                                                                                                         }
                                                                                                         §§goto(addr243);
                                                                                                      }
                                                                                                      §§goto(addr274);
                                                                                                   }
                                                                                                   §§goto(addr202);
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    §§goto(addr182);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr86);
                                             }
                                             §§goto(addr79);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr79);
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr324);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr63);
               }
               §§goto(addr57);
            }
            §§goto(addr79);
         }
         §§goto(addr247);
      }
      
      public function play() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Number = NaN;
         §§push(this.§5N§);
         if(_loc2_)
         {
            if(!§§pop())
            {
               if(!(_loc3_ && this))
               {
                  §§push(this.§]!N§);
                  if(!_loc3_)
                  {
                     if(§§pop() >= this.§1J§)
                     {
                        if(!_loc3_)
                        {
                           this.§]!N§ = 0;
                           if(_loc2_ || _loc3_)
                           {
                              addr49:
                              §§push(this.§5!§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop().time);
                                 if(_loc2_)
                                 {
                                    addr62:
                                    _loc1_ = §§pop();
                                    addr63:
                                    §§push(this);
                                    §§push(_loc1_);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§§pop() - this.§]!N§);
                                    }
                                    §§pop().§5_§ = §§pop();
                                    this.§5N§ = true;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr98:
                                       this.§5!§.§'`§(this);
                                       addr100:
                                       if((this.§8^§ & 1) != 0)
                                       {
                                          addr106:
                                          this.§'!$§.dispatchEvent(new §=;§(§=;§.PLAY));
                                       }
                                       §§push(this.§+!v§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() == null);
                                          if(!_loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr129:
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr133:
                                                      §§pop();
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(this.§+!v§);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(§§pop().onPlay);
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               §§push(null);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr175);
                                                                  }
                                                                  addr175:
                                                                  §§goto(addr174);
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   addr174:
                                                   if(!§§pop())
                                                   {
                                                      addr180:
                                                      this.§+!v§.onPlay.apply(null,this.§+!v§.onPlayParams);
                                                      addr179:
                                                      addr178:
                                                      addr176:
                                                      if(_loc3_)
                                                      {
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   this.tick(_loc1_);
                                                   addr189:
                                                   return;
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr62);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr180);
         }
         §§goto(addr175);
      }
      
      public function set onStopParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`z§().onStopParams = param1;
         }
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  §§push(Number(0));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     addr53:
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr71);
                  }
                  addr56:
                  if(§§pop() > this.§1J§)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§push(this.§1J§);
                        if(_loc2_)
                        {
                           addr71:
                           param1 = Number(§§pop());
                           if(_loc2_)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr71);
                     }
                  }
                  addr74:
                  this.§]!N§ = param1;
                  if(_loc2_)
                  {
                     addr79:
                     this.play();
                  }
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr71);
         }
         §§goto(addr53);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§'!$§);
            if(_loc5_ || param2)
            {
               if(§§pop() != null)
               {
                  if(!(_loc4_ && param3))
                  {
                     addr49:
                     this.§'!$§.removeEventListener(param1,param2,param3);
                     if(!_loc4_)
                     {
                        this.§3!"§();
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            §§push(this.§'!$§);
            if(!_loc6_)
            {
               if(§§pop() == null)
               {
                  if(_loc7_)
                  {
                     this.§'!$§ = new ClonableEventDispatcher(this);
                     if(!_loc6_)
                     {
                        addr61:
                        this.§'!$§.addEventListener(param1,param2,param3,param4,param5);
                        §§goto(addr59);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr59);
               }
               addr59:
               if(_loc7_)
               {
                  addr69:
                  this.§3!"§();
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function fireStop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if((this.§8^§ & 2) != 0)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§'!$§.dispatchEvent(new §=;§(§=;§.§ !8§));
                  if(!_loc1_)
                  {
                     addr41:
                     §§push(this.§+!v§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() == null);
                        if(!_loc1_)
                        {
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr71);
                                 }
                              }
                              §§goto(addr108);
                           }
                           addr71:
                           §§pop();
                           if(_loc2_)
                           {
                              §§push(this.§+!v§);
                              if(!_loc1_)
                              {
                                 addr78:
                                 §§push(§§pop().onStop);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(null);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc1_)
                                       {
                                          §§goto(addr108);
                                       }
                                       addr108:
                                       if(§§pop())
                                       {
                                       }
                                       §§goto(addr124);
                                    }
                                    §§pop().apply(§§pop(),this.§+!v§.onStopParams);
                                    §§goto(addr124);
                                 }
                              }
                              §§goto(addr119);
                           }
                           addr124:
                           if(!(_loc1_ && _loc1_))
                           {
                              addr119:
                              §§push(this.§+!v§.onStop);
                              §§push(null);
                           }
                           return;
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §@!d§() : Boolean
      {
         return this.§72§;
      }
      
      public function clone() : §=Y§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:AbstractTween = this.newInstance();
         if(!_loc2_)
         {
            if(_loc1_ != null)
            {
               if(_loc3_)
               {
                  addr28:
                  _loc1_.copyFrom(this);
               }
            }
            return _loc1_;
         }
         §§goto(addr28);
      }
      
      public function get onCompleteParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+!v§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§+!v§.onCompleteParams : null;
            }
         }
         §§goto(addr41);
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`z§().onUpdateParams = param1;
         }
      }
      
      public function get onStopParams() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+!v§);
            if(!_loc1_)
            {
               return §§pop() != null ? this.§+!v§.onStopParams : null;
            }
         }
         §§goto(addr27);
      }
      
      protected function §`z§() : ClassicHandlers
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            return this.§+!v§ || (this.§+!v§ = new ClassicHandlers());
         }
         §§goto(addr39);
      }
      
      public function set onPlay(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`z§().onPlay = param1;
         }
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`z§().onComplete = param1;
         }
      }
      
      override public function tick(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§5N§);
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(true);
                  }
                  else
                  {
                     addr33:
                     §§push(param1);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() - this.§5_§);
                        if(_loc4_ || param1)
                        {
                           addr51:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        this.§]!N§ = _loc2_;
                        if(_loc4_ || _loc2_)
                        {
                           this.internalUpdate(_loc2_);
                           §§push(this.§8^§);
                           if(_loc4_ || this)
                           {
                              §§push(4);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() & §§pop());
                                 if(_loc4_ || this)
                                 {
                                    §§push(0);
                                    if(!(_loc3_ && param1))
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(this.§'!$§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§pop().dispatchEvent(new §=;§(§=;§.§]v§));
                                             if(!(_loc3_ && param1))
                                             {
                                                addr121:
                                                §§push(this.§+!v§);
                                                §§push(null);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() != §§pop());
                                                   §§push(§§pop() != §§pop());
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(this.§+!v§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop().onUpdate);
                                                            if(_loc4_)
                                                            {
                                                               §§push(null);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        addr154:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(this.§+!v§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop().onUpdate);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(this.§+!v§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().onUpdateParams);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop().apply(§§pop(),§§pop());
                                                                                             §§goto(addr180);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr436);
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        addr180:
                                                                        §§push(this.§5N§);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr184:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§goto(addr192);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            §§goto(addr405);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr282);
                                             }
                                             addr192:
                                             if(_loc2_ >= this.§1J§)
                                             {
                                                this.§]!N§ = this.§1J§;
                                                §§push(this.§72§);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         this.§5N§ = false;
                                                         if(_loc4_)
                                                         {
                                                            addr222:
                                                            §§push(this.§8^§);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(8);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr252:
                                                                     §§push(0);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              addr258:
                                                                              §§push(this.§'!$§);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr267:
                                                                                 §§pop().dispatchEvent(new §=;§(§=;§.COMPLETE));
                                                                                 §§goto(addr272);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr359:
                                                                                 §§pop().dispatchEvent(new §=;§(§=;§.COMPLETE));
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr371:
                                                                                    §§goto(addr374);
                                                                                    §§push(this.§+!v§);
                                                                                    §§push(null);
                                                                                 }
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                        addr272:
                                                                        §§push(this.§+!v§);
                                                                        §§push(null);
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           addr282:
                                                                           §§push(§§pop() != §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr286:
                                                                              §§push(§§pop());
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 addr294:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(this.§+!v§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().onComplete);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(null);
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   addr317:
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr325:
                                                                                                         §§push(this.§+!v§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr329:
                                                                                                            §§push(§§pop().onComplete);
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               addr337:
                                                                                                               §§push(null);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr340:
                                                                                                                  §§push(this.§+!v§);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().onCompleteParams);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr347:
                                                                                                                        §§pop().apply(§§pop(),§§pop());
                                                                                                                        addr349:
                                                                                                                        return true;
                                                                                                                        addr348:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr436:
                                                                                                                     §§push(§§pop().onCompleteParams);
                                                                                                                  }
                                                                                                                  §§pop().apply(§§pop(),§§pop());
                                                                                                                  addr448:
                                                                                                                  §§push(this);
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§1J§);
                                                                                                                  }
                                                                                                                  §§pop().§]!N§ = §§pop();
                                                                                                                  §§push(this);
                                                                                                                  §§push(param1);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§]!N§);
                                                                                                                  }
                                                                                                                  §§pop().§5_§ = §§pop();
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr477);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr413:
                                                                                                                  §§push(§§pop() != §§pop());
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     addr422:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           addr434:
                                                                                                                           §§goto(addr436);
                                                                                                                           §§push(this.§+!v§.onComplete);
                                                                                                                           §§push(null);
                                                                                                                           §§push(this.§+!v§);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr448);
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                               §§goto(addr477);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr397:
                                                                                                            §§push(§§pop().onComplete);
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               addr405:
                                                                                                               §§push(null);
                                                                                                               if(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr379:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       addr388:
                                                                                       §§push(this.§+!v§);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr471);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr374:
                                                                           §§push(§§pop() != §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr379);
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr477);
                                                                        }
                                                                     }
                                                                     addr356:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§goto(addr359);
                                                                        §§push(this.§'!$§);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               else
                                                               {
                                                                  addr354:
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                               §§goto(addr356);
                                                               §§push(0);
                                                            }
                                                            else
                                                            {
                                                               addr353:
                                                               §§goto(addr354);
                                                               §§push(8);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr353);
                                                      §§push(this.§8^§);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr286);
                                             }
                                             addr471:
                                             this.tick(param1);
                                             return false;
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr356);
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr354);
                           }
                           §§goto(addr353);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr51);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'!$§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§'!$§);
                  }
                  else
                  {
                     §§goto(addr32);
                  }
               }
               §§goto(addr32);
            }
            return §§pop().hasEventListener(param1);
         }
         addr32:
         return false;
      }
      
      protected function copyFrom(param1:AbstractTween) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§5!§ = param1.§5!§;
         if(_loc2_)
         {
            this.§1J§ = param1.§1J§;
            if(!(_loc3_ && _loc3_))
            {
               this.§72§ = param1.§72§;
               §§push(param1.§+!v§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc3_ && this))
                     {
                        this.§+!v§ = new ClassicHandlers();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr78:
                           this.§+!v§.copyFrom(param1.§+!v§);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§push(param1.§'!$§);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop() != null)
                     {
                        addr102:
                        this.§'!$§ = new ClonableEventDispatcher(this);
                        §§goto(addr109);
                     }
                     §§goto(addr119);
                  }
                  addr109:
                  this.§'!$§.copyFrom(param1.§'!$§);
                  §§goto(addr107);
               }
               §§goto(addr78);
            }
            §§goto(addr102);
         }
         addr107:
         if(_loc2_ || this)
         {
            addr119:
            this.§8^§ = param1.§8^§;
         }
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
