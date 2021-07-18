package §1" §
{
   import §7t§.§7a§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §!!2§ extends EventDispatcher
   {
      
      public static const PAN:String = "PAN";
      
      public static const SAVE:String = "SAVE";
      
      public static const CONTINUE:String = "CONTINUE";
      
      public static const MODIFY:String = "MODIFY";
      
      public static const ADD:String = "ADD";
      
      public static const DELETE:String = "DELETE";
      
      public static const CATEGORY:String = "CATEGORY";
      
      public static const GRAVITY:String = "GRAVITY";
      
      public static const CREATE_UNDO:String = "CREATE_UNDO";
      
      private static var §+!u§:§!!2§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            PAN = "PAN";
            loop0:
            while(true)
            {
               SAVE = "SAVE";
               loop1:
               while(true)
               {
                  CONTINUE = "CONTINUE";
                  loop2:
                  while(true)
                  {
                     MODIFY = "MODIFY";
                     while(true)
                     {
                        ADD = "ADD";
                        continue loop2;
                        addr92:
                        loop5:
                        while(!(_loc2_ && §!!2§))
                        {
                           CATEGORY = "CATEGORY";
                           while(_loc1_)
                           {
                              GRAVITY = "GRAVITY";
                              loop7:
                              do
                              {
                                 CREATE_UNDO = "CREATE_UNDO";
                                 addr58:
                                 while(_loc1_ || _loc2_)
                                 {
                                    §+!u§ = new §!!2§();
                                    if(!_loc2_)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(!(_loc1_ || §!!2§));
                              
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §%o§:Dictionary;
      
      public function §!!2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%o§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public static function get §[E§() : §!!2§
      {
         return §+!u§;
      }
      
      public function §[j§(param1:Function, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§%o§[param2] == null)
            {
               if(!_loc3_)
               {
                  this.§%o§[param2] = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr90:
            }
            for(; this.§%o§[param2].indexOf(param1) == -1; §§goto(addr90))
            {
               if(_loc4_ || this)
               {
                  if(_loc4_)
                  {
                     this.§%o§[param2].push(param1);
                     addr63:
                     break;
                  }
                  continue;
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §'!j§(param1:Function, param2:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc3_:Vector.<String> = this.§%o§[param2];
         if(_loc5_)
         {
            if(_loc3_)
            {
               if(!_loc6_)
               {
                  §§push(int(this.§%o§[param2].indexOf(param1)));
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                        addr58:
                        §§push(-1);
                     }
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_)
                        {
                           this.§%o§[param2].splice(_loc4_,1);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr58);
               }
            }
         }
         addr79:
      }
      
      public function §%r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§%o§ = new Dictionary();
         }
      }
      
      private function §"!A§(param1:String, ... rest) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§%o§[param1];
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(!_loc3_.apply(null,rest))
               {
                  if(_loc6_ || param1)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      public function §-"6§() : Boolean
      {
         return true;
      }
      
      public function §?!p§() : Boolean
      {
         return this.§"!A§(SAVE);
      }
      
      public function §+6§() : Boolean
      {
         return this.§"!A§(CONTINUE);
      }
      
      public function §'%§(param1:§7a§ = null) : Boolean
      {
         return this.§"!A§(MODIFY,param1);
      }
      
      public function §]"7§(param1:String = null) : Boolean
      {
         return this.§"!A§(ADD,param1);
      }
      
      public function §#§(param1:§7a§ = null) : Boolean
      {
         return this.§"!A§(DELETE,param1);
      }
      
      public function §&f§(param1:String) : Boolean
      {
         return this.§"!A§(CATEGORY,param1);
      }
      
      public function §["&§() : Boolean
      {
         return this.§"!A§(GRAVITY);
      }
      
      public function §^"#§() : Boolean
      {
         return this.§"!A§(CREATE_UNDO);
      }
   }
}
