package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class § !o§ extends §"_§
   {
      
      public static const §11§:Number = 1000;
      
      public static const §<!i§:Number = 500;
      
      public static const §," §:String = "yell";
      
      public static const § E§:String = "blink";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §11§ = 1000;
            while(true)
            {
               §<!i§ = 500;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  §," § = "yell";
                  while(true)
                  {
                     § E§ = "blink";
                     if(_loc2_ || § !o§)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      protected var §5c§:Number = -1.0;
      
      protected var §?9§:Number = -1.0;
      
      public function § !o§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function get §#y§() : Boolean
      {
         return this.§?9§ >= 0;
      }
      
      public function get §%`§() : Boolean
      {
         return this.§5c§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§#y§);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        addr61:
                        §§push(this.§%`§);
                        if(_loc2_)
                        {
                           addr65:
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr65);
                  }
                  return §§pop();
               }
            }
            §§goto(addr65);
         }
         §§goto(addr61);
      }
      
      public function scream() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5c§ = §11§;
         }
         do
         {
            this.§?9§ = -1;
            do
            {
               §`!f§.setAnimation(§," §,false);
            }
            while(_loc1_ && this);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function blink() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?9§ = §<!i§;
            while(true)
            {
               this.§5c§ = -1;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §`!f§.setAnimation(§ E§,false);
            if(_loc2_)
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!f§.setAnimation(§=!4§,false);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(this.§%`§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§5c§);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§5c§ = §§pop();
                     addr127:
                     while(true)
                     {
                     }
                  }
                  addr104:
               }
               while(true)
               {
                  §§push(this.§#y§);
                  loop4:
                  for(; _loc4_; loop7:
                  while(true)
                  {
                     §§push(this.isNormal);
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 this.normalize();
                                 addr76:
                                 loop8:
                                 for(; !_loc5_; while(true)
                                 {
                                    super.render(param1,param2,param3);
                                    if(!(_loc4_ || param3))
                                    {
                                       continue loop8;
                                    }
                                    §§goto(addr41);
                                 })
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                 }
                                 continue loop7;
                              }
                              addr74:
                           }
                           else
                           {
                              §§goto(addr104);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr28);
                  })
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§?9§);
                        if(!(_loc5_ && param3))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§?9§ = §§pop();
                        addr100:
                        while(true)
                        {
                           continue loop4;
                        }
                        addr41:
                        if(!(_loc5_ && param1))
                        {
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §]Y§(§,4§.§9#§);
         }
      }
   }
}
