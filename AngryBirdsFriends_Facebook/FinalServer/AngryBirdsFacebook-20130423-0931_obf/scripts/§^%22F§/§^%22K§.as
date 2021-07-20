package §^"F§
{
   public class §^"K§
   {
       
      
      private var §!"H§:String;
      
      private var §"!l§:Boolean;
      
      private var §&""§:String;
      
      private var §1!d§:String;
      
      private var §<!R§:String;
      
      private var §+R§:String;
      
      private var §["W§:Array;
      
      private var §<9§:Boolean = true;
      
      public function §^"K§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Array = null, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&""§ = param1;
               while(true)
               {
                  this.§"!l§ = param7;
                  loop2:
                  for(; _loc8_ || param3; if(!(_loc9_ && param3))
                  {
                     continue loop0;
                  })
                  {
                     this.§!"H§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§1!d§ = param3;
                        addr68:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc9_ && param2)
               {
                  continue;
               }
               this.§+R§ = param4;
               loop5:
               while(true)
               {
                  this.§<!R§ = param5;
                  do
                  {
                     if(_loc9_ && param2)
                     {
                        continue loop5;
                     }
                     if(_loc8_)
                     {
                        continue;
                     }
                     §§goto(addr68);
                  }
                  while(this.§["W§ = param6, _loc9_ && param2);
                  
                  §§goto(addr34);
               }
            }
         }
         addr34:
      }
      
      public function get §?"7§() : String
      {
         return this.§!"H§;
      }
      
      public function get §9"7§() : Boolean
      {
         return this.§"!l§;
      }
      
      public function get §1!#§() : String
      {
         return this.§&""§;
      }
      
      public function get § !T§() : Boolean
      {
         return this.§<9§;
      }
      
      public function set § !T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<9§ = param1;
         }
      }
      
      public function get §#;§() : String
      {
         return this.§1!d§;
      }
      
      public function get §,§() : String
      {
         return this.§<!R§;
      }
      
      public function get §0"0§() : String
      {
         return this.§+R§;
      }
      
      public function get §>",§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§["W§);
            if(!(_loc2_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§["W§.concat();
      }
   }
}
