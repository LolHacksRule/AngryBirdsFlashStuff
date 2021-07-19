package §>"$§
{
   import §1!i§.§,#_§;
   import §6!H§.§9!!§;
   import §7K§.§5#^§;
   import §7K§.Energy;
   import §;#Q§.§>#I§;
   
   public class §!"C§ implements §>#I§
   {
       
      
      public var starCoins:int;
      
      public var energy:Energy;
      
      public var items:Vector.<§5#^§>;
      
      public var subscriptions:Vector.<§9!!§>;
      
      public var birdLevels:§,#_§;
      
      public function §!"C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || _loc3_)
         {
            this.starCoins = parseInt(param1.starCoins);
            loop0:
            while(true)
            {
               if(param1.energy)
               {
                  continue;
               }
               loop3:
               while(param1.items)
               {
                  while(true)
                  {
                     if(_loc4_ || this)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     continue loop3;
                  }
               }
               while(true)
               {
                  while(true)
                  {
                     if(param1.birdLevels)
                     {
                        while(!(_loc3_ && _loc2_))
                        {
                           this.birdLevels = new §,#_§(param1.birdLevels);
                           while(true)
                           {
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr149);
                     }
                     addr100:
                     while(param1.subscriptions)
                     {
                        while(true)
                        {
                           this.subscriptions = new Vector.<§9!!§>(0);
                           addr112:
                           while(true)
                           {
                              §§push(0);
                              addr87:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop11;
                              }
                           }
                        }
                     }
                     addr46:
                     return;
                  }
               }
            }
         }
         §§goto(addr195);
      }
   }
}
