package §,h§
{
   import §!X§.§86§;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §6!2§ extends §4!9§
   {
       
      
      private var §[M§:Number = -1;
      
      private var §!!N§:Number = -1;
      
      public function §6!2§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr76:
                     §§push(false);
                     break;
                  }
                  while(true)
                  {
                  }
                  addr78:
               }
               while(true)
               {
                  this.§;!-§(0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               §§push(false);
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               if(_loc2_ || param1)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr76);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            if(§;J§)
            {
               §§push(this.§[M§);
               if(_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           §§push(this.§[M§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() / this.§!!N§);
                              if(_loc3_ || _loc2_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc1_ = §§pop();
                           while(true)
                           {
                              this.§!!N§ = 0;
                              loop1:
                              while(_loc3_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§!!N§);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    §§pop().§[M§ = §§pop();
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    addr125:
                                    this.§;!-§(0);
                                    addr128:
                                 }
                                 return true;
                              }
                           }
                           addr122:
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr22);
               }
               §§goto(addr120);
            }
            §§goto(addr125);
         }
         §§goto(addr72);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param3))
         {
            if(!§;J§)
            {
               if(_loc8_)
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§;!-§();
                  }
                  while(!_loc8_);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return _loc7_;
         }
         §§goto(addr72);
      }
      
      public function §;!-§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[M§ = 0;
            loop0:
            do
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr104:
                  addr105:
                  addr108:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
                  this.§!!N§ = 0;
                  this.update(0);
                  continue loop0;
               }
            }
            while(_loc3_);
            
         }
         §§goto(addr19);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§[M§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§[M§);
               if(!_loc3_)
               {
                  if(§§pop() >= this.§!!N§)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr88:
                     while(true)
                     {
                        this.§[M§ = -1;
                        addr46:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              break loop2;
                           }
                        }
                        §§goto(addr93);
                        addr34:
                        if(_loc2_ || this)
                        {
                           addr41:
                           break loop0;
                        }
                     }
                  }
                  break;
               }
               continue loop0;
            },while(true)
            {
               §&t§ = true;
               if(_loc2_)
               {
                  §§goto(addr34);
               }
               §§goto(addr46);
            },§§goto(addr41))
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§[M§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§[M§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Boolean(§;J§));
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§[M§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr95:
                           addr125:
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc2_)
                              {
                                 break;
                                 addr98:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §§push(true);
                                       break loop4;
                                    }
                                    continue loop2;
                                 }
                                 addr126:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                           addr125:
                           return §§pop();
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
            while(_loc2_ && this);
            
            return §§pop();
         }
         §§goto(addr77);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§[M§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     addr41:
                     §§push(this.§[M§);
                     if(_loc1_ || _loc2_)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               return -1;
            }
            addr63:
            return §§pop() / this.§!!N§;
         }
         §§goto(addr41);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§[M§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     addr42:
                     §§push(this.§!!N§);
                     if(_loc1_ && _loc1_)
                     {
                     }
                     §§goto(addr64);
                  }
               }
               return 0;
            }
            addr64:
            return §§pop() - this.§[M§;
         }
         §§goto(addr42);
      }
   }
}
