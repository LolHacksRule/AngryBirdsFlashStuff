package §default§
{
   import flash.utils.Dictionary;
   
   public class §7#,§ extends §`#O§
   {
       
      
      private var §'`§:Dictionary;
      
      public function §7#,§(param1:String, param2:Function, param3:String = "Application", param4:String = "")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§'`§ = new Dictionary(true);
            loop0:
            while(true)
            {
               this.§'`§["callback"] = param2;
               loop1:
               while(true)
               {
                  super(param1);
                  loop2:
                  while(_loc6_)
                  {
                     this.grouping = param3;
                     loop3:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.helpText = param4;
                           if(!_loc5_)
                           {
                              if(_loc5_ && param3)
                              {
                                 continue loop2;
                              }
                              §§goto(addr52);
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get callback() : Function
      {
         return this.§'`§["callback"] as Function;
      }
   }
}
