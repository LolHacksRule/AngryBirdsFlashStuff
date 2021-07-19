package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §^#$§ extends §&#=§
   {
      
      public static const §`"[§:Number = 1000;
      
      public static const §0!p§:Number = 500;
      
      public static const §3"=§:String = "yell";
      
      public static const §^?§:String = "blink";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`"[§ = 1000;
            while(true)
            {
               §0!p§ = 500;
               addr52:
               if(!(_loc1_ && _loc1_))
               {
                  §^?§ = "blink";
                  addr59:
                  if(_loc1_)
                  {
                     while(!_loc1_)
                     {
                        §§goto(addr52);
                        §§goto(addr59);
                     }
                     while(true)
                     {
                        §3"=§ = "yell";
                        §§goto(addr50);
                     }
                     addr50:
                     addr74:
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      protected var §=P§:Number = -1.0;
      
      protected var §7#N§:Number = -1.0;
      
      public function §^#$§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function get §5!+§() : Boolean
      {
         return this.§7#N§ >= 0;
      }
      
      public function get §;e§() : Boolean
      {
         return this.§=P§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§5!+§);
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(!(_loc1_ && this))
               {
                  §§goto(addr41);
               }
               §§goto(addr65);
            }
            addr41:
            if(§§pop())
            {
               if(_loc2_ || _loc1_)
               {
                  §§pop();
                  addr61:
                  §§push(this.§;e§);
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
         §§goto(addr61);
      }
      
      public function scream() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=P§ = §`"[§;
         }
         do
         {
            this.§7#N§ = -1;
            do
            {
               §2N§.setAnimation(§3"=§,false);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function blink() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7#N§ = §0!p§;
         }
         do
         {
            this.§=P§ = -1;
            do
            {
               §2N§.setAnimation(§^?§,false);
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2N§.setAnimation(§'%§,false);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§;e§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§=P§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§=P§ = §§pop();
                     addr128:
                     while(true)
                     {
                     }
                  }
                  addr105:
               }
               while(true)
               {
                  §§push(this.§5!+§);
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        §§push(this);
                        §§push(this.§7#N§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§7#N§ = §§pop();
                     }
                     while(true)
                     {
                        continue loop4;
                        loop8:
                        while(!(_loc4_ && this))
                        {
                           while(true)
                           {
                              super.render(param1,param2,param3);
                              if(!(_loc5_ || this))
                              {
                                 continue loop8;
                              }
                              addr37:
                              if(_loc5_ || this)
                              {
                                 break;
                              }
                              addr72:
                              while(true)
                              {
                                 this.normalize();
                                 continue loop8;
                                 §§goto(addr37);
                              }
                           }
                           if(_loc5_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 return;
                                 addr53:
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr128);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §[v§(§'#2§.§<&§);
         }
      }
   }
}
