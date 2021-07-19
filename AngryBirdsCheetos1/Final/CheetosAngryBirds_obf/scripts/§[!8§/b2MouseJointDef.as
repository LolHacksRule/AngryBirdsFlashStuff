package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §[!A§:Number;
      
      public var §!k§:Number;
      
      public var §-C§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.target = new b2Vec2();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  type = b2Joint.§7q§;
                  while(true)
                  {
                     this.§[!A§ = 0;
                     addr69:
                     while(_loc2_ || _loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(!(_loc1_ && _loc1_))
               {
                  this.§-C§ = 0.7;
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     return;
                     addr42:
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
            }
         }
         §§goto(addr42);
      }
   }
}
