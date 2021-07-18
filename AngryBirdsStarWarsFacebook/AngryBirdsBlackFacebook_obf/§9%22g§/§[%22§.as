package §9"g§
{
   import com.furusystems.dconsole2.core.style.§7"h§;
   
   public class §["§
   {
       
      
      private var §'!l§:XML;
      
      private var § !'§:§7"h§;
      
      private var §+<§:Object;
      
      public function §["§(param1:§7"h§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
         }
         do
         {
            this.§ !'§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function §@#5§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!l§ = param1;
            do
            {
               this.§+<§ = this.§>-§(this.§'!l§);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §>-§(param1:XML) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr68:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ && this)
               {
                  break;
               }
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
            try
            {
               addr83:
               §§push(§§newactivation());
               if(_loc6_)
               {
                  §§pop().§§slot[2] = this.§ !'§.colors.§&!H§(node.toString());
                  if(!_loc5_)
                  {
                     addr222:
                     §§push(§§newactivation());
                     addr131:
                  }
                  else
                  {
                     addr152:
                     §§push(§§newactivation());
                     if(_loc6_ || param1)
                     {
                        addr160:
                        §§pop().§§slot[2] = {};
                        if(!(_loc5_ && _loc3_))
                        {
                           var _loc3_:int = 0;
                           if(!_loc5_)
                           {
                              var _loc4_:* = node.§*§;
                              if(!_loc5_)
                              {
                                 addr218:
                                 if(§§hasnext(_loc4_,_loc3_))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§pop().§§slot[3] = §§nextvalue(_loc3_,_loc4_);
                                       if(_loc6_)
                                       {
                                          o[n.localName()] = this.§>-§(n);
                                          addr199:
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr199);
                                 }
                                 addr221:
                                 §§goto(addr222);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr222);
                     }
                  }
                  return §§pop().§§slot[2];
               }
               §§goto(addr160);
            }
            catch(e:Error)
            {
               if(_loc6_)
               {
                  var o:Object = Number(node.toString());
               }
            }
            §§goto(addr131);
         }
      }
      
      public function get data() : Object
      {
         return this.§+<§;
      }
      
      public function get xml() : XML
      {
         return this.§'!l§;
      }
      
      public function set xml(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@#5§(param1);
         }
      }
   }
}
