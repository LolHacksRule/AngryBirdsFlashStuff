package §0D§
{
   import §@!"§.§?l§;
   
   public class §3j§
   {
       
      
      private var §=&§:Vector.<§?"'§>;
      
      private var §<!L§:String;
      
      private var §7"=§:Class;
      
      private var §1!o§:String = "";
      
      private var §4l§:Class;
      
      private var §7"E§:Class;
      
      private var §0"3§:Boolean;
      
      private var §!k§:String;
      
      private var §&!3§:String;
      
      private var §`!O§:String;
      
      private var §<" §:Class;
      
      private var § ]§:Boolean = false;
      
      private var §@"H§:Array;
      
      public function §3j§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super();
            while(true)
            {
               this.§<!L§ = param1;
               while(_loc6_)
               {
                  addr73:
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  this.§0"3§ = param5;
                  addr80:
                  if(_loc6_)
                  {
                     addr34:
                     if(!(_loc6_ || this))
                     {
                        loop4:
                        while(true)
                        {
                           this.§&!3§ = param4;
                           addr56:
                           addr90:
                           while(_loc6_ || param2)
                           {
                              §§goto(addr73);
                              §§goto(addr80);
                           }
                           while(true)
                           {
                              this.§!k§ = param3;
                              continue loop4;
                              §§goto(addr56);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr56);
               }
            }
         }
         while(true)
         {
            this.§7"=§ = param2;
            §§goto(addr90);
         }
      }
      
      public function get §=l§() : Boolean
      {
         return this.§0"3§;
      }
      
      public function set §=l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0"3§ = param1;
         }
      }
      
      public function get §9>§() : Class
      {
         return this.§7"=§;
      }
      
      public function get §;[§() : Class
      {
         return this.§4l§;
      }
      
      public function set §;[§(param1:Class) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4l§ = param1;
         }
      }
      
      public function get §%B§() : Class
      {
         return this.§7"E§;
      }
      
      public function set §%B§(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7"E§ = param1;
         }
      }
      
      public function get tutorials() : String
      {
         return this.§1!o§;
      }
      
      public function set tutorials(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1!o§ = param1;
         }
      }
      
      public function get §#K§() : Class
      {
         return this.§<" §;
      }
      
      public function set §#K§(param1:Class) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<" § = param1;
         }
      }
      
      public function get §8!u§() : String
      {
         return this.§`!O§;
      }
      
      public function set §8!u§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!O§ = param1;
         }
      }
      
      public function get §!!-§() : Boolean
      {
         return this.§ ]§;
      }
      
      public function set §!!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ ]§ = param1;
         }
      }
      
      public function get §^"1§() : Array
      {
         return this.§@"H§;
      }
      
      public function set §^"1§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@"H§ = param1;
         }
      }
      
      public function get §1!8§() : String
      {
         return this.§<!L§;
      }
      
      public function get § set§() : String
      {
         return this.§!k§;
      }
      
      public function §+!>§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(!this.§=&§)
            {
               if(!_loc3_)
               {
                  this.§=&§ = new Vector.<§?"'§>();
                  addr79:
                  while(true)
                  {
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            while(true)
            {
               this.§=&§[this.§=&§.length] = new §?"'§(param1,param2);
               if(!(_loc3_ && param2))
               {
                  break;
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function get §<">§() : String
      {
         return this.§&!3§;
      }
      
      public function §6k§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§?"'§ = null;
         for each(_loc1_ in this.§=&§)
         {
            if(!_loc5_)
            {
               §?l§.§ "G§.§&!4§(_loc1_.§ `§,new _loc1_.replaceState());
            }
         }
      }
      
      public function get §3_§() : Vector.<§?"'§>
      {
         return this.§=&§.concat();
      }
      
      public function §=L§(param1:§3j§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?"'§ = null;
         for each(_loc2_ in param1.§3_§)
         {
            if(!(_loc6_ && this))
            {
               this.§+!>§(_loc2_.§ `§,_loc2_.replaceState);
            }
         }
      }
   }
}
