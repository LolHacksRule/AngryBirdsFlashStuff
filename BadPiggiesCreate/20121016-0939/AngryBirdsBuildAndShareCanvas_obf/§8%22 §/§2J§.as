package §8" §
{
   public class §2J§
   {
      
      public static const §6v§:String = "post";
      
      public static const §;Z§:String = "pre";
      
      public static const §-!Y§:String = "condition";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6v§ = "post";
            while(true)
            {
               §;Z§ = "pre";
               while(_loc1_ || §2J§)
               {
                  §-!Y§ = "condition";
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      private var §!!N§:String = "";
      
      private var §"h§:String = "normal";
      
      private var §#!W§:String = "condition";
      
      public function §2J§(param1:XML)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§!!N§ = param1.toString();
            loop1:
            while(true)
            {
               if(!param1.hasOwnProperty("@expression"))
               {
                  while(param1.hasOwnProperty("@type"))
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           this.§#!W§ = param1.@type;
                        }
                        else
                        {
                           while(true)
                           {
                              this.§"h§ = param1.@expression;
                              continue loop1;
                           }
                           addr66:
                        }
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  addr19:
                  return;
                  addr23:
               }
               §§goto(addr66);
            }
         }
      }
      
      public function get text() : String
      {
         return this.§!!N§;
      }
      
      public function get expression() : String
      {
         return this.§"h§;
      }
      
      public function get type() : String
      {
         return this.§#!W§;
      }
   }
}
