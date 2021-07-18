package §7!H§
{
   public class §'"H§
   {
       
      
      public var popup:§3z§;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var §&!G§:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function §'"H§(param1:§3z§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.popup = param1;
               loop1:
               while(true)
               {
                  this.useTransitionIn = param2;
                  while(true)
                  {
                     this.useTransitionOut = param3;
                     loop3:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           this.§&!G§ = param4;
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
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
         §§goto(addr51);
      }
   }
}
