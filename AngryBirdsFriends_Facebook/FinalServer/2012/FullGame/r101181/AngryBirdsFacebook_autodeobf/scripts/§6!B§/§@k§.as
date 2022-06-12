package §6!B§
{
   public class §@k§
   {
       
      
      public var songId:String;
      
      public var §%!5§:String;
      
      public var volume:Number;
      
      public var §&!a§:int;
      
      public var §@!c§:String;
      
      public var §2d§:int;
      
      public function §@k§(param1:String, param2:String, param3:Number = -1, param4:int = 999, param5:String = "", param6:int = 3000)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.songId = param1;
            do
            {
               this.§%!5§ = param2;
               loop2:
               do
               {
                  this.volume = param3;
                  loop3:
                  while(true)
                  {
                     this.§&!a§ = param4;
                     loop4:
                     do
                     {
                        this.§@!c§ = param5;
                        while(_loc8_)
                        {
                           continue loop0;
                           this.§2d§ = param6;
                           if(_loc8_ || param2)
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     while(_loc7_ && param1);
                     
                     continue loop2;
                  }
               }
               while(_loc7_ && param1);
               
            }
            while(!_loc8_);
            
            return;
         }
      }
   }
}
