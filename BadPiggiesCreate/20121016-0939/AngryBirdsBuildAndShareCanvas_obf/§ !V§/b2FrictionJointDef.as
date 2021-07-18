package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §0!`§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!2§ = new b2Vec2();
            while(true)
            {
               this.§ !c§ = new b2Vec2();
               loop1:
               for(; _loc1_ || this; if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr70))
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§case §;
                        loop4:
                        do
                        {
                           this.§0!`§ = 0;
                           while(!_loc2_)
                           {
                              continue loop1;
                              this.maxTorque = 0;
                              if(_loc1_ || this)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        while(_loc2_ && this);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §@!<§ = param1;
            loop0:
            while(true)
            {
               §3j§ = param2;
               while(true)
               {
                  this.§!2§.SetV(§@!<§.GetLocalPoint(param3));
                  loop2:
                  while(_loc4_ || this)
                  {
                     while(true)
                     {
                        this.§ !c§.SetV(§3j§.GetLocalPoint(param3));
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
   }
}
