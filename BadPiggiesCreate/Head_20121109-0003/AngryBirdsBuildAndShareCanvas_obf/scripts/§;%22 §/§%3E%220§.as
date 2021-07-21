package §;" §
{
   public class §>"0§
   {
      
      public static const §9!7§:String = "post";
      
      public static const §]"3§:String = "pre";
      
      public static const §,!Q§:String = "condition";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9!7§ = "post";
            while(true)
            {
               §]"3§ = "pre";
               loop1:
               while(_loc1_ || §>"0§)
               {
                  while(true)
                  {
                     §,!Q§ = "condition";
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §-"1§:String = "";
      
      private var §'u§:String = "normal";
      
      private var §%!G§:String = "condition";
      
      public function §>"0§(param1:XML)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§-"1§ = param1.toString();
               addr58:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         loop1:
         while(true)
         {
            if(param1.hasOwnProperty("@expression"))
            {
               if(_loc2_ || _loc3_)
               {
                  this.§'u§ = param1.@expression;
               }
               while(true)
               {
               }
               addr92:
            }
            for(; param1.hasOwnProperty("@type"); §§goto(addr92))
            {
               if(!_loc3_)
               {
                  continue loop1;
               }
               addr56:
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr58);
            }
            addr24:
            return;
         }
      }
      
      public function get text() : String
      {
         return this.§-"1§;
      }
      
      public function get expression() : String
      {
         return this.§'u§;
      }
      
      public function get type() : String
      {
         return this.§%!G§;
      }
   }
}
