package §default§
{
   import §]!"§.§+"d§;
   import §]"U§.§ !X§;
   
   public class §2!n§
   {
       
      
      public var data;
      
      public function §2!n§(param1:String, param2:§4>§, param3:§+"d§, param4:§ !X§, param5:Boolean)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super();
         }
         var _loc6_:* = param1;
         _loc6_ = param4.§4!'§(_loc6_);
         var _loc7_:* = param1.charAt(0);
         if(!(_loc8_ && this))
         {
            if("(" === _loc7_)
            {
               if(_loc9_ || param1)
               {
                  addr89:
                  §§push(0);
                  if(!_loc9_)
                  {
                     addr99:
                  }
               }
               else
               {
                  addr96:
                  §§push(1);
                  if(!_loc8_)
                  {
                     §§goto(addr99);
                  }
               }
               addr104:
               switch(§§pop())
               {
                  case 0:
                     _loc6_ = _loc6_.slice(1,_loc6_.length - 1);
                     _loc6_ = param2.§else §(_loc6_,null,true);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr129);
                  case 1:
                     _loc6_ = new XML(_loc6_);
               }
               §§push(_loc6_ is String);
               if(!(_loc8_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        if(_loc6_ == "false")
                        {
                           if(_loc9_)
                           {
                              §§goto(addr129);
                           }
                           else
                           {
                              addr140:
                              §§push(true);
                           }
                           §§goto(addr141);
                        }
                        else if(_loc6_ == "true")
                        {
                           if(!_loc8_)
                           {
                              §§goto(addr140);
                           }
                           addr129:
                           §§push(false);
                           if(!_loc8_)
                           {
                              addr132:
                              _loc6_ = §§pop();
                           }
                           else
                           {
                              addr141:
                              _loc6_ = §§pop();
                           }
                           try
                           {
                              addr143:
                              _loc6_ = param3.§]#9§([_loc6_])[0];
                           }
                           catch(e:Error)
                           {
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr140);
                  }
                  addr173:
                  this.data = _loc6_;
                  return;
               }
               §§goto(addr132);
            }
            else
            {
               if("<" === _loc7_)
               {
                  §§goto(addr96);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr89);
      }
      
      public function toString() : String
      {
         return this.data.toString();
      }
   }
}
