package §[""§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   
   public class §]"4§
   {
       
      
      private var §+!Z§:Vector.<§5"I§>;
      
      public function §]"4§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super();
         }
         var _loc5_:b2Vec2 = new b2Vec2(param1,param2);
         var _loc6_:b2Vec2 = new b2Vec2(param3,param4);
         if(_loc8_)
         {
            this.§+!Z§ = new Vector.<§5"I§>();
         }
         var _loc7_:b2World;
         (_loc7_ = §,!q§.§9!,§.levelObjects.§2#G§.mLevelEngine.mWorld).RayCast(this.§1"Y§,_loc5_,_loc6_);
      }
      
      public function §6n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+!Z§.sort(this.§ b§);
         }
      }
      
      public function get §;"b§() : Vector.<§5"I§>
      {
         return this.§+!Z§;
      }
      
      public function set §;"b§(param1:Vector.<§5"I§>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+!Z§ = param1;
         }
      }
      
      public function §-!I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(this.§+!Z§));
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr89:
                     while(true)
                     {
                        §§push(this.§+!Z§.length > 0);
                        addr52:
                        while(!(_loc1_ && this))
                        {
                           if(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           §§push(true);
                           break;
                        }
                        §§goto(addr89);
                     }
                     else
                     {
                        while(true)
                        {
                           addr20:
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 break loop4;
                              }
                              §§goto(addr24);
                           }
                        }
                        addr82:
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr20);
               }
               return §§pop();
            }
            while(!_loc2_);
            
            return §§pop();
         }
         §§goto(addr82);
      }
      
      private function §1"Y§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§5"I§ = null;
         var _loc5_:b2Body = param1.GetBody();
         if(!_loc7_)
         {
            if(!param1.§!W§())
            {
               _loc6_ = new §5"I§(_loc5_,param2,param3,param4);
               addr39:
               if(!_loc7_)
               {
                  this.§+!Z§.push(_loc6_);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function § b§(param1:§5"I§, param2:§5"I§) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1.fraction);
            loop0:
            while(true)
            {
               §§push(param2.fraction);
               loop1:
               while(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     §§push(param1.fraction);
                     if(_loc4_)
                     {
                        §§push(param2.fraction);
                        if(_loc4_ || this)
                        {
                           if(§§pop() <= §§pop())
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr69);
                              }
                              break loop1;
                           }
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§push(0);
                  if(!(_loc3_ && this))
                  {
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr69);
               }
               addr94:
               return §§pop();
            }
         }
         addr69:
         return 1;
      }
   }
}
