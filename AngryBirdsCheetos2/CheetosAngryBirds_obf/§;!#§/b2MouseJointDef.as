package §;!#§
{
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §4d§:Number;
      
      public var §7!=§:Number;
      
      public var §'m§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  type = b2Joint.§`!U§;
                  while(true)
                  {
                     this.§4d§ = 0;
                     loop3:
                     while(_loc2_ || this)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§7!=§ = 5;
                           do
                           {
                              this.§'m§ = 0.7;
                           }
                           while(_loc1_ && this);
                           
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
   }
}
