package com.angrybirds.popup.tutorial
{
   public class AbstractTutorialMapping implements ITutorialMapping
   {
       
      
      public function AbstractTutorialMapping()
      {
         super();
      }
      
      public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         throw "--#AbstractTutorialMapping[getTutorialNamesForMapping]::m_invIB Implement method";
      }
   }
}
