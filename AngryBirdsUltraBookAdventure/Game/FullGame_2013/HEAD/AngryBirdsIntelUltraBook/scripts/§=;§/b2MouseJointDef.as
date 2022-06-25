package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §<!U§:Number;
      
      public var §5Q§:Number;
      
      public var §=$§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  type = b2Joint.§9!C§;
                  loop2:
                  while(true)
                  {
                     this.§<!U§ = 0;
                     addr77:
                     while(true)
                     {
                        this.§5Q§ = 5;
                        addr68:
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  addr46:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         while(true)
         {
            this.§=$§ = 0.7;
            if(_loc1_ || _loc1_)
            {
               if(!_loc2_)
               {
                  §§goto(addr46);
               }
               §§goto(addr77);
            }
            §§goto(addr68);
         }
         §§goto(addr63);
      }
   }
}
